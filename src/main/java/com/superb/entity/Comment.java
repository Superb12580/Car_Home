package com.superb.entity;

import java.time.LocalDateTime;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 *
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Comment implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 评论正文
     */
    private String commentText;

    /**
     * 动态id
     */
    private Long essayId;

    /**
     * 评论者id
     */
    private Long userId;

    /**
     * 评论时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 逻辑删除
     */
    private Boolean deleted;


}
