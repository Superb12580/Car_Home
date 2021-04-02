package com.superb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.entity.Label;
import com.superb.mapper.LabelMapper;
import com.superb.service.LabelService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
LabelServiceImpl extends ServiceImpl<LabelMapper, Label> implements LabelService {
    @Override
    public List<Label> listLabel(List<String> labelId) {
        return baseMapper.selectList(new QueryWrapper<Label>().in("label_id", labelId));
//        return baseMapper.listLabel(labelId);
    }
}
