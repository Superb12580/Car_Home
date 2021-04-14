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
 * @since 2021-04-14
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Car implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 车唯一id
     */
    @TableId(value = "car_id", type = IdType.AUTO)
    private Integer carId;

    private String carName;

    /**
     * 所属车型
     */
    private Integer styleId;

    /**
     * 厂商指导价(万)
     */
    private String gfzdj;

    /**
     * 最大扭矩
     */
    private Integer zdnj;

    /**
     * 车长
     */
    private Integer cc;

    /**
     * 车宽
     */
    private Integer ck;

    /**
     * 车高
     */
    private Integer cg;

    /**
     * 轴距
     */
    private Integer zj;

    /**
     * 油箱容积
     */
    private Double yxrj;

    /**
     * 发动机型号
     */
    private String fdjxh;

    /**
     * 排量
     */
    private String pl;

    /**
     * 进气方式-Map
     */
    private Integer jqxs;

    /**
     * 最大马力
     */
    private String zdml;

    /**
     * 最大功率
     */
    private String zdgl;

    /**
     * 驱动类型-Map
     */
    private Integer qdfs;

    /**
     * 驻车制动类型-Map
     */
    private Integer zczdlx;

    /**
     * 百公里加速时间
     */
    private String bgljs;

    /**
     * 百公里油耗
     */
    private String bglyh;

    /**
     * 最高车速
     */
    private String zgcs;

    /**
     * 燃油标号
     */
    private String rybh;

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


}
