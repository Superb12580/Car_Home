package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Label;
import com.superb.entity.Style;
import com.superb.service.StyleService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
@RestController
@RequestMapping("/style")
public class StyleController {

    @Autowired
    private StyleService styleService;


    private int count = 0;
    private int count2 = 0;



    // 首页底部展示
    @GetMapping("/item")
    public Result item() {


        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = styleService.count() / MapUtil.sizeA;

        Page<Style> page = new Page<>((++count % i) + 1, MapUtil.sizeA);

        return Result.success(styleService.page(page, new QueryWrapper<Style>().orderByDesc("create_time")).getRecords());

    }

    // 首页轮播图展示
    @GetMapping("/itemLbt")
    public Result itemLbt() {



        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = styleService.count(new QueryWrapper<Style>().isNotNull("img_lbt")) / MapUtil.sizeA;

        Page<Style> page = new Page<>((++count2 % i) + 1, MapUtil.sizeA);

        return Result.success(styleService.page(page, new QueryWrapper<Style>().isNotNull("img_lbt").orderByDesc("create_time")).getRecords());

    }

    // 点击量前十
    @GetMapping("/itemDjl")
    public Result itemDjl() {
        Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeC);
        IPage<Style> djl = styleService.page(page, new QueryWrapper<Style>().orderByDesc("djl"));
        return Result.success(djl.getRecords());
    }


    // 销量排行
    @GetMapping("/xlPh")
    public Result xlPh() {
        Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeD);
        IPage<Style> styleIPage = styleService.page(page, new QueryWrapper<Style>().orderByDesc("xl"));
        return Result.success(styleIPage.getRecords());
    }

    // 评分排行
    @GetMapping("/pfPh")
    public Result pfPh() {
        List<Map<String, Object>> list = styleService.pfPh(MapUtil.sizeD);
        return Result.success(list);
    }

    // 点击量排行
    @GetMapping("/djlPh")
    public Result djlPh() {
        Page<Style> page = new Page<>(MapUtil.MRYM, MapUtil.sizeD);
        IPage<Style> styleIPage = styleService.page(page, new QueryWrapper<Style>().orderByDesc("djl"));
        return Result.success(styleIPage.getRecords());
    }

    // 收藏数排行
    @GetMapping("/scsPh")
    public Result scsPh() {
        List<Map<String, Object>> list = styleService.scPh(MapUtil.sizeD);
        return Result.success(list);
    }

}
