package com.superb.entity;

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
 * @since 2021-04-02
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Video implements Serializable {

    private static final long serialVersionUID = 1L;


    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String videoId;

    private String videoUrl;


    /**
     * 车型id
     */
    private Integer styleId;

    /**
     * 视频标题
     */
    private String videoTitle;

    /**
     * 注册时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 视频内容
     */
    private String videoText;

    /**
     * 发布id
     */
    private Long userId;

    /**
     * 状态
     */
    private Integer zt;


    /**
     * 点击量
     */
    private Long count;


}
