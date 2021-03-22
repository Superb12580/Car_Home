package com.superb.dto;

import com.superb.entity.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.List;

/**
 * @author Superb
 * @date 2020/11/19 - 12:27
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class EssayDto extends Essay implements Serializable {
    /**
     * 管理员查询时 连接显示用户
     */
    private User user;
    /**
     * 展示个人动态或管理员查询时 连接显示标签
     */
    private Label label;
    /**
     * 展示个人动态或管理员查询时 连接显示评论
     */
    private List<Comment> comment;


    /**
     * 展示个人动态或管理员查询时 连接显示评论
     */
    private List<Forward> forward;

    /**
     * 展示个人动态或管理员查询时 连接显示点赞
     */
    private List<Agree> agree;

    /**
     * 展示个人动态或管理员查询时 连接显示转发数
     */
    private Integer forwardCount;

    /**
     * 展示个人动态或管理员查询时 连接显示点赞数
     */
    private Integer agreeCount;

    /**
     * 展示个人动态或管理员查询时 连接显示评论数
     */
    private Integer commentCount;



}
