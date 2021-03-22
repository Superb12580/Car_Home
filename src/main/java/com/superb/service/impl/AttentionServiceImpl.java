package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.AttentionDto;
import com.superb.entity.Attention;
import com.superb.mapper.AttentionMapper;
import com.superb.service.AttentionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class AttentionServiceImpl extends ServiceImpl<AttentionMapper, Attention> implements AttentionService {

    @Autowired
    private AttentionMapper attentionMapper;

    @Override
    public IPage<AttentionDto> superbAttentionById(Page<?> page, Long thisId) {
        return attentionMapper.superbAttentionById(page, thisId);
    }

    @Override
    public IPage<AttentionDto> superbFansById(Page<?> page, Long thatId) {
        return attentionMapper.superbFansById(page, thatId);
    }
}
