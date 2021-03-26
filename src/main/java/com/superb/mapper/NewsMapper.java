package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.News;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

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


    /**
     * 一个用户的文章数量
     */
    Integer newsCountByUserId (Long userId);


    /**
     * 文章详情 附带用户信息 粉丝数 文章数量 相关style信息 文章排行
     * @param id
     * @return
     */
    Map<String, Object> newsById (Integer id);

    /**
     * 查询所有带头图片的news 附带user
     * @return
     */
    IPage<Map<String, Object>> listNews (Page<?> page);

}
