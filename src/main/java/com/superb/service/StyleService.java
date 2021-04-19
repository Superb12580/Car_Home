package com.superb.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Style;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
public interface StyleService extends IService<Style> {

    /**
     * 收藏排行连表查询
     * @param count
     * @return
     */
    List<Map<String, Object>> scPh(Integer count);

    /**
     * 评分排行
     * @param count
     * @return
     */
    List<Map<String, Object>> pfPh(Integer count);

    /**
     * 后台轮播图展示
     * @param page
     * @return
     */
    Page<Map<String, Object>> listAdminLbt(Page<?> page);


    /**
     * 根据数据类型返回所有相关数据
     * @param typeName
     * @return
     */
    List<Map<String, Object>> selectData(String typeName);

    /**
     * 上下架车型
     * @param style
     */
    void updateAdmin(Style style);

    /**
     * 管理员查询所有
     * @param page
     * @return
     */
    Page<Style> listAdmin(Page<?> page);

}
