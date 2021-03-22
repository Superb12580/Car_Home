package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Essay;
import com.superb.entity.Forward;
import com.superb.entity.User;
import com.superb.service.EssayService;
import com.superb.service.ForwardService;
import com.superb.service.RecordService;
import com.superb.service.UserService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/forward")
public class ForwardController {
    @Autowired
    private ForwardService forwardService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private EssayService essayService;

    @Autowired
    private UserService userService;

    /**
     * 显示所有转发
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> forwardDtoIPage = forwardService.superbAllForward(page);
        return Result.success(forwardDtoIPage);
    }

    /**
     * 转发动态
     * @param forward
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Forward forward){

        Essay essay = essayService.getById(forward.getEssayId());
        User user = userService.getById(forward.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.ZFDT, essay.getEssayId().toString(), essay.getEssayTitle());
        forwardService.save(forward);
        return Result.success("转发成功");

    }

    /**
     * 查看个人转发
     * @param userId
     * @param current
     * @param size
     * @return
     */
    @GetMapping("item")
    public Result item(@RequestParam("userId") Long userId,
                       @RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> forwardDtoIPage = forwardService.superbByUserId(page,userId);
        return Result.success(forwardDtoIPage);
    }

    /**
     * 删除转发
     * @param forward
     * @return
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Forward forward){

        Essay essay = essayService.getById(forward.getEssayId());
        User user = userService.getById(forward.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCZF, essay.getEssayId().toString(), essay.getEssayTitle());
        forwardService.remove(new QueryWrapper<Forward>().eq("essay_id", forward.getEssayId()).eq("user_id", forward.getUserId()));
        return Result.success("删除成功",null);

    }
}
