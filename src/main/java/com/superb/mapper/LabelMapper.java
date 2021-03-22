package com.superb.mapper;

import com.superb.entity.Label;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Repository
public interface LabelMapper extends BaseMapper<Label> {

    Label selectById (Integer labelId);

}
