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

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public IPage<Map<String, Object>> superbMessageById(Page<?> page, Long userId) {
        IPage<Map<String, Object>> list = messageMapper.superbMessageById(page, userId);
        for (Map<String, Object> map : list.getRecords()) {
            Long messageType = (Long)map.get("messageType");
            map.put("messageType2", MapUtil.XXLX_MAP.get(messageType));
        }
        return list;
    }

}
