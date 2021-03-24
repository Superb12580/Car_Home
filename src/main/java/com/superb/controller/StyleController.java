package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.CollectionDto;
import com.superb.entity.Style;
import com.superb.service.StyleService;
import com.superb.util.Result;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-24
 */
@RestController
@RequestMapping("/style")
public class StyleController {

    @Autowired
    private StyleService styleService;


    private int count = 0;

    // 首页底部展示
    @GetMapping("/item")
    public Result item() {


        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = styleService.count() / MapUtil.sizeA;

        Page<Style> page = new Page<>((++count % i) + 1, MapUtil.sizeA);

        return Result.success(styleService.page(page));

    }

}
