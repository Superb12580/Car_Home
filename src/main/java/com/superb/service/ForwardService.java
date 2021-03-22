package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.ForwardDto;
import com.superb.entity.Forward;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;


/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface ForwardService extends IService<Forward> {

    /**
     * 查询一个用户的所有转发
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId);

}
