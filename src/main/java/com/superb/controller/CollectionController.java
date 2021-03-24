package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.CollectionDto;
import com.superb.entity.Collection;
import com.superb.entity.Style;
import com.superb.entity.User;
import com.superb.service.CollectionService;
import com.superb.service.RecordService;
import com.superb.service.StyleService;
import com.superb.service.UserService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/collection")
public class CollectionController {

    @Autowired
    private CollectionService collectionService;

    @Autowired
    private StyleService styleService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;

    /**
     * 查看我的收藏
     * 连接车型表，预览车id name photo 即可
     * @param currentPage
     * @param userId
     * @return
     */
    @GetMapping("/item")
    public Result item(@RequestParam(defaultValue = "1",name = "currentPage") Integer currentPage,
                       @RequestParam("userId") Long userId){


        Page<CollectionDto> page = new Page<>(currentPage, MapUtil.sizeD);
        IPage<CollectionDto> collectionDtoIPage = collectionService.superbCollectionById(page, userId);


        return Result.success(collectionDtoIPage);

    }


    /**
     * 收藏车型 取消收藏
     * @param collection
     * @return
     */
    @PostMapping("/addDelete")
    public Result addDelete(@RequestBody Collection collection){
        Collection collection2 = collectionService.getOne(new QueryWrapper<Collection>().eq("user_id", collection.getUserId()).eq("style_id", collection.getStyleId()));
        Style style = styleService.getById(collection.getStyleId());
        User user = userService.getById(collection.getUserId());
        if (collection2 == null){
            // ==================日志==================
            recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SC, style.getStyleId().toString(), style.getStyleName());
            collectionService.save(collection);
            return Result.success("收藏成功");
        }
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.QXSC, style.getStyleId().toString(), style.getStyleName());
        collectionService.remove(new QueryWrapper<Collection>().eq("style_id", collection.getStyleId()).eq("user_id", collection.getUserId()));
        return Result.success("取消收藏成功");
    }
}
