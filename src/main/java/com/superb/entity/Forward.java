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
public class Forward implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 动态id
     */
    private Long essayId;

    /**
     * 转发用户id
     */
    private Long userId;

    /**
     * 转发标题
     */
    private String forwardTitle;

    /**
     * 转发时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 逻辑删除
     */
    private Boolean deleted;


}
