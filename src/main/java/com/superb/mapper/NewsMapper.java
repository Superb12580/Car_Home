package com.superb.mapper;

import com.superb.entity.News;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
public interface NewsMapper extends BaseMapper<News> {

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
