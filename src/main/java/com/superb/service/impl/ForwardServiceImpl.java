package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.ForwardDto;
import com.superb.entity.Forward;
import com.superb.mapper.ForwardMapper;
import com.superb.service.ForwardService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class ForwardServiceImpl extends ServiceImpl<ForwardMapper, Forward> implements ForwardService {
    @Autowired
    private ForwardMapper forwardMapper;


    @Override
    public IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId) {
        return forwardMapper.superbByUserId(page, userId);
    }
}
