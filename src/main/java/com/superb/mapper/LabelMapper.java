package com.superb.mapper;

import com.superb.entity.Label;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface LabelMapper extends BaseMapper<Label> {
    /**
     * 多标签查询
     * @param labelId
     * @return
     */
    List<Label> listLabel (List<String> labelId);
}
