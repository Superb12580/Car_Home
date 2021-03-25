package com.superb.service;

import com.superb.entity.News;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
public interface NewsService extends IService<News> {

    /**
     * 首页文章
     * @param total
     * @return
     */
    List<News> listWz (Integer total);

    /**
     * 首页文章排行
     * @param total
     * @return
     */
    List<News> listPh (Integer total);

}
