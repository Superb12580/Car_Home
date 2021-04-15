package com.superb.mapper;

import com.superb.entity.Style;
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
public interface StyleMapper extends BaseMapper<Style> {
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
