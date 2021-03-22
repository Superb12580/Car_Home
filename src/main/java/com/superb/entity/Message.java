package com.superb.entity;

import java.time.LocalDateTime;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
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
public class Message implements Serializable {

    private static final long serialVersionUID = 1L;


    /**
     * 消息id
     */
    @TableId(value = "message_id", type = IdType.AUTO)
    private Long messageId;

    /**
     * 消息标题
     */
    private String messageTitle;

    /**
     * 消息正文
     */
    private String messageText;

    /**
     * 发送者id
     */
    private Long thatId;

    /**
     * 接收者id
     */
    private Long thisId;

    /**
     * 动态id
     */
    private Long essayId;

    /**
     * 消息类型 0系统 1动态 2私信
     */
    private Integer messageType;

    /**
     * 发送时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 逻辑删除
     */
    private Boolean deleted;


}
