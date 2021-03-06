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
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class News implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 封面(可为空)
     */
    private String newsPhoto;

    /**
     * 标题
     */
    private String title;

    /**
     * 正文
     */
    private String text1;

    /**
     * 正文
     */
    private String text2;

    /**
     * 正文
     */
    private String text3;

    /**
     * 正文
     */
    private String text4;

    /**
     * 正文
     */
    private String text5;

    /**
     * 正文
     */
    private String text6;

    /**
     * 正文
     */
    private String text7;

    /**
     * 相关车系id
     */
    private Integer styleId;

    /**
     * 公众号id
     */
    private Long userId;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 点击量
     */
    private Long count;

    /**
     * 唯一标识
     */
    private String wybs;

    /**
     * 状态  0已编辑 1上传图集 2待审核 3已通过
     */
    private Integer zt;


    /**
     * 上市车名称
     */
    private String sscmc;

    /**
     * 上市时间
     */
    private String sssj;

}
