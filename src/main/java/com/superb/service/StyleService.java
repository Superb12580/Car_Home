package com.superb.service;

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


}
