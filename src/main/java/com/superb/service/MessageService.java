package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Message;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface MessageService extends IService<Message> {

    /**
     * 连表查询自己的消息
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbMessageById(Page<?> page, Long userId);

}
