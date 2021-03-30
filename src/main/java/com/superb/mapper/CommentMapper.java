package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.CommentDto;
import com.superb.entity.Comment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
public interface CommentMapper extends BaseMapper<Comment> {


    /**
     * 查询一个用户的所有评论 附带动态
     * @param userId
     * @return
     */
    IPage<Map<String, Object>> superbByUserId(Page<?> page, Long userId);



    /**
     * 查询一条动态的所有评论 附带评论用户信息
     * @param essayId
     * @return
     */
    IPage<Map<String, Object>> superbCommentById(Page<?> page, Long essayId);


    /**
     * 查询一个动态的评论数量
     * @param essayId
     * @return
     */
    Integer commentCountByEssayId(Long essayId);

}
