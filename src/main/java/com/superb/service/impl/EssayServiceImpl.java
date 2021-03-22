package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.EssayDto;
import com.superb.entity.Essay;
import com.superb.mapper.EssayMapper;
import com.superb.service.EssayService;
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
public class
EssayServiceImpl extends ServiceImpl<EssayMapper, Essay> implements EssayService {

    @Autowired
    private EssayMapper essayMapper;


    @Override
    public EssayDto superbByEssayId(Long essayId) {
        return essayMapper.superbByEssayId(essayId);
    }

    @Override
    public IPage<Map<String, Object>> superbList(Page<?> page) {
        return essayMapper.superbList(page);
    }

    @Override
    public IPage<Map<String, Object>> superbEssayById(Page<?> page, Long userId) {
        return essayMapper.superbEssayById(page, userId);
    }

    @Override
    public IPage<EssayDto> adminList(Page<?> page) {
        return essayMapper.adminList(page);
    }

    @Override
    public IPage<EssayDto> adminListDeleted(Page<?> page) {
        return essayMapper.adminListDeleted(page);
    }

    @Override
    public IPage<EssayDto> adminLike(Page<?> page, String str) {
        return essayMapper.adminLike(page, str);
    }

    @Override
    public IPage<EssayDto> adminLikeDeleted(Page<?> page, String str) {
        return essayMapper.adminLikeDeleted(page, str);
    }
}
