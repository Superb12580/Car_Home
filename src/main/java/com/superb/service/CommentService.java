package com.superb.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.CommentDto;
import com.superb.entity.Comment;
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
public interface CommentService extends IService<Comment> {

    /**
     * 查询一个用户的所有评论
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId);


    /**
     * 查询一个用户的所有评论 附带评论相关动态
     * @param userId
     * @return
     */
    IPage<CommentDto> superbCommentByUserId(Page<CommentDto> page,Long userId);

}
