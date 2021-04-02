package com.superb.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
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
public class Essay implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 动态id
     */
    @TableId(value = "essay_id", type = IdType.AUTO)
    private Long essayId;

    /**
     * 动态标题
     */
    private String essayTitle;

    /**
     * 动态标签
     */
    private String essayLabel;

    /**
     * 动态正文
     */
    private String essayText;

    /**
     * 发布时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 用户id
     */
    private String wybs;

    /**
     * 视频路径
     */
    private String video;

    /**
     * 逻辑删除
     */
    private Boolean deleted;


}
