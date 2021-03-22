package com.superb.service.impl;

import com.superb.dto.AgreeDto;
import com.superb.entity.Agree;
import com.superb.mapper.AgreeMapper;
import com.superb.service.AgreeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
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
public class AgreeServiceImpl extends ServiceImpl<AgreeMapper, Agree> implements AgreeService {

    @Autowired
    private AgreeMapper agreeMapper;
    @Override
    public List<Map<String, Object>> superbAgreeById(Long essayId) {
        return agreeMapper.superbAgreeById(essayId);
    }
}
