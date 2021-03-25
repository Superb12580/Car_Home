package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Message;
import com.superb.mapper.MessageMapper;
import com.superb.service.MessageService;
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
public class
MessageServiceImpl extends ServiceImpl<MessageMapper, Message> implements MessageService {


    @Override
    public IPage<Map<String, Object>> superbMessageById(Page<?> page, Long userId, Integer messageType) {
        return baseMapper.superbMessageById(page, userId, messageType);
    }

}
