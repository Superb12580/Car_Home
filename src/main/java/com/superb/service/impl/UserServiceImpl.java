package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.User;
import com.superb.mapper.UserMapper;
import com.superb.service.UserService;
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
UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public IPage<User> adminListDeleted(Page<?> page) {
        return userMapper.adminListDeleted(page);
    }

    @Override
    public IPage<User> adminLikeDeleted(Page<?> page, String str) {
        return userMapper.adminLikeDeleted(page,"%"+str+"%");
    }

    @Override
    public List<User> getUserNotId(Long userId) {
        return userMapper.getUserNotId(userId);
    }
}
