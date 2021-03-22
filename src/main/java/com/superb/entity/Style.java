package com.superb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
 * @since 2020-11-19
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
     * 车型名称
     */
    private String styleName;

    /**
     * 车型头像
     */
    private String stylePhoto;


    /**
     * 逻辑删除
     */
    private boolean deleted;




}
