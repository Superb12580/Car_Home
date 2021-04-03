package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.News;
import com.superb.service.NewsService;
import com.superb.service.OssService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    private int count = 0;

    /**
     * 查询所有带图的news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "10",name = "size") Integer size) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.listNews(page);
        return Result.success(list);
    }


    /**
     * 查询所有带图的news  附加user
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/item")
    public Result list (@RequestParam(defaultValue = "1",value = "current") Integer current,
                        @RequestParam(defaultValue = "10",name = "size") Integer size,
                        @RequestParam("userId") Long userId) {
        Page<Map<String ,Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> list = newsService.itemNews(page, userId);
        return Result.success(list);
    }

    /**
     * news左侧轮播图
     * @return
     */
    @GetMapping("/itemLbt")
    public Result itemLbt () {
        // 总条数 / 每页显示 = 完整页数  i!=0
        int i = newsService.count(new QueryWrapper<News>().isNotNull("news_photo")) / MapUtil.sizeA;

        Page<News> page = new Page<>((++count % i) + 1, MapUtil.sizeA);

        return Result.success(newsService.page(page, new QueryWrapper<News>().isNotNull("news_photo").orderByDesc("create_time")).getRecords());
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

    /**
     * 文章详情
     * @param id
     * @return
     */
    @GetMapping("/itemXq")
    public Result itemXq (@RequestParam("id") Integer id) {
        Map<String, Object> map = newsService.newsById(id);
        map.put("count", (Long)map.get("count") + 1L);
        // 访问量+1
        News news = new News();
        news.setId(id);
        news.setCount((Long)map.get("count"));
        newsService.updateById(news);
        return Result.success(map);
    }



    //***********************************后台***********************************//


    @Autowired
    private OssService ossService;
    /**
     * 上传新闻头像
     * @param file
     * @param news
     * @return
     */
    @PostMapping("/uploadNewsTX")
    public Result uploadNewsTX(MultipartFile file, News news) {
        String url = ossService.uploadFile(file, MapUtil.NEWS_TX);
        news.setNewsPhoto(url);
        newsService.updateById(news);
        return Result.success();
    }

    /**
     * 上传新闻图集
     * @param file
     * @param news
     * @return
     */
    @PostMapping("/uploadNewsTJ")
    public Result uploadNewsTJ(MultipartFile file, News news) {
        String url = ossService.uploadFile(file, MapUtil.NEWS_TJ);
        news.setNewsPhoto(url);
        newsService.updateById(news);
        return Result.success();
    }

}
