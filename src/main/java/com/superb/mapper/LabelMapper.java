package com.superb.mapper;

import com.superb.entity.Label;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface LabelMapper extends BaseMapper<Label> {

    Label selectById (Integer labelId);

}
