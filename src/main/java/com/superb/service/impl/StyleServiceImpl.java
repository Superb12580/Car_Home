package com.superb.service.impl;

import com.superb.entity.Style;
import com.superb.mapper.StyleMapper;
import com.superb.service.StyleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
@Service
public class StyleServiceImpl extends ServiceImpl<StyleMapper, Style> implements StyleService {

    @Override
    public List<Map<String, Object>> scPh(Integer count) {
        return this.baseMapper.scPh(count);
    }

    @Override
    public List<Map<String, Object>> pfPh(Integer count) {
        return baseMapper.pfPh(count);
    }
}
