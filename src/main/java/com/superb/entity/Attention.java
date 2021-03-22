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
public class Attention implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 关注id
     */
    private Long thatId;

    /**
     * 用户id
     */
    private Long thisId;

    /**
     * 关注时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;


}
