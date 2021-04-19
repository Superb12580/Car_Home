package com.superb.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
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
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Style implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 车型id
     */
    @TableId(value = "style_id", type = IdType.AUTO)
    private Integer styleId;

    /**
     * 价格区间
     */
    private String jgqj;

    /**
     * 数据字典-厂商
     */
    private Integer cs;

    /**
     * 车型名称
     */
    private String styleName;

    /**
     * 轮播图
     */
    private String imgLbt;

    /**
     * 车型头像
     */
    private String stylePhoto;

    /**
     * 数据字典-级别-头部筛选
     */
    private Integer jb;

    /**
     * 上市时间
     */
    private String sssj;

    /**
     * 环保标准-Map
     */
    private Integer hbbz;

    /**
     * 数据字典-能源类型
     */
    private Integer nylx;

    /**
     * 评分人数
     */
    private Integer pfrs;

    /**
     * 总评分
     */
    private Integer zpf;

    /**
     * 点击量
     */
    private Long djl;

    /**
     * 销量
     */
    private Integer xl;

    /**
     * 标签 数据字典1-39
     */
    private String bq;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 修改时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private String updateTime;

    /**
     * 用户id
     */
    private String wybs;

    /**
     * 逻辑删除
     */
    private Integer deleted;


}
