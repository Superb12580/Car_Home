package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.News;
import com.superb.service.NewsService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
@RestController
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    private int count = 0;

    /**
     * news左侧轮播图
     * @return
     */
    @GetMapping("/itemLbt")
    public Result itemLbt () {
        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = newsService.count(new QueryWrapper<News>().isNotNull("news_photo")) / MapUtil.sizeA;

        Page<News> page = new Page<>((++count % i) + 1, MapUtil.sizeA);

        return Result.success(newsService.page(page, new QueryWrapper<News>().isNotNull("news_photo")).getRecords());
    }

    /**
     * news文章
     * @return
     */
    @GetMapping("/itemWz")
    public Result itemWz () {
        return Result.success(newsService.listWz(MapUtil.WZTS));
    }

    /**
     * news排行
     * @return
     */
    @GetMapping("/itemPh")
    public Result itemPh () {


        return Result.success(newsService.listPh(MapUtil.PHTS));
    }

}
