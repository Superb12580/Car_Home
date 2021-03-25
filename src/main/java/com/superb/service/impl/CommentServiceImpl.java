package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.CommentDto;
import com.superb.entity.Comment;
import com.superb.mapper.CommentMapper;
import com.superb.service.CommentService;
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
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {


    @Override
    public IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId) {
        return baseMapper.superbByUserId(page, userId);
    }


    @Override
    public IPage<CommentDto> superbCommentByUserId(Page<CommentDto> page, Long userId) {
        return baseMapper.superbCommentByUserId(page, userId);
    }

}
