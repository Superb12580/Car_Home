package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.EssayDto;
import com.superb.entity.Essay;
import com.superb.entity.Label;
import com.superb.mapper.EssayMapper;
import com.superb.service.EssayService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.superb.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Service
public class
EssayServiceImpl extends ServiceImpl<EssayMapper, Essay> implements EssayService {

    @Autowired
    private LabelService labelService;


    @Override
    public EssayDto superbByEssayId(Long essayId) {
        EssayDto essayDto = baseMapper.superbByEssayId(essayId);
        // 处理多标签
        if (essayDto.getEssayLabel() != null && !"".equals(essayDto.getEssayLabel())) {
            String str = essayDto.getEssayLabel();
            String[] split = str.split(",");
            List<Label> labels = labelService.listLabel(Arrays.asList(split));
            essayDto.setLabel(labels);
        }
        return essayDto;
    }


    @Override
    public IPage<Map<String, Object>> superbEssayById(Page<?> page, Long userId) {
        IPage<Map<String, Object>> mapIPage = baseMapper.superbEssayById(page, userId);
        // 处理多标签
        for (Map<String, Object> map : mapIPage.getRecords()) {
            if (map.get("essayLabel") != null && !"".equals(map.get("essayLabel"))) {
                String str = map.get("essayLabel").toString();
                String[] split = str.split(",");
                List<Label> labels = labelService.listLabel(Arrays.asList(split));
                map.put("essayLabel", labels);
            }
        }
        return mapIPage;
    }


    @Override
    public IPage<Map<String, Object>> superbAllEssay(Page<?> page) {
        IPage<Map<String, Object>> mapIPage = baseMapper.superbAllEssay(page);
        // 处理多标签
        for (Map<String, Object> map : mapIPage.getRecords()) {
            if (map.get("essayLabel") != null && !"".equals(map.get("essayLabel"))) {
                String str = map.get("essayLabel").toString();
                String[] split = str.split(",");
                List<Label> labels = labelService.listLabel(Arrays.asList(split));
                map.put("essayLabel", labels);
            }
        }
        return mapIPage;
    }

    @Override
    public IPage<EssayDto> adminList(Page<?> page) {
        return baseMapper.adminList(page);
    }

    @Override
    public IPage<EssayDto> adminListDeleted(Page<?> page) {
        return baseMapper.adminListDeleted(page);
    }

    @Override
    public IPage<EssayDto> adminLike(Page<?> page, String str) {
        return baseMapper.adminLike(page, str);
    }

    @Override
    public IPage<EssayDto> adminLikeDeleted(Page<?> page, String str) {
        return baseMapper.adminLikeDeleted(page, str);
    }
}
