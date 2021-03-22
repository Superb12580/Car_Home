package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.AttentionDto;
import com.superb.dto.EssayDto;
import com.superb.entity.Attention;
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
public interface AttentionMapper extends BaseMapper<Attention> {
    /**
     * 查询关注
     * @param page
     * @param thisId
     * @return
     */
    IPage<AttentionDto> superbAttentionById(Page<?> page,Long thisId);

    /**
     * 查询粉丝
     * @param page
     * @param thatId
     * @return
     */
    IPage<AttentionDto> superbFansById(Page<?> page,Long thatId);

}
