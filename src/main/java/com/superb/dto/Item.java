package com.superb.dto;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * 个人资料
 * @author Superb
 * @date 2020/11/18 - 13:13
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Item implements Serializable {
    /**
     * 用户id
     */
    private Long userId;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 头像
     */
    private String photo;

    /**
     * 签名
     */
    private String sign;

    /**
     * 性别 0 1 2
     */
    private Integer gender;

    /**
     * 出生日期
     */
    private String dateBirth;

    /**
     * 注册时间
     */
    private String createTime;

    /**
     * 用户等级
     */
    private Integer grade;

    /**
     * 是否已签到
     */
    private Integer graded;

    /**
     * 私信条数
     */
    private Integer sxts;


    /**
     * 是否认证公众号
     */
    private Integer sfrz;

    /**
     * 是否已关注
     */
    private Integer flagAttention;

    /**
     * 收藏数
     */
    private Integer collectionCount;


    /**
     * 关注数
     */
    private Integer attentionCount;


    /**
     * 粉丝数
     */
    private Integer fansCount;

    /**
     * 收藏数
     */
    private Integer essayCount;


    /**
     * 关注数
     */
    private Integer forwardCount;


    /**
     * 粉丝数
     */
    private Integer commentCount;

    /**
     * 消息数
     */
    private Integer messageCount;

}
