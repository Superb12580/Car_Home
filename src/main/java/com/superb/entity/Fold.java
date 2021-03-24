package com.superb.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
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
 * @since 2021-03-24
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Fold implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * id
     */
    private Integer styleId;

    private String stylePhoto;

    private String title1;

    private String aText1;

    private String aText2;

    private String title2;

    private String bText1;

    private String bText2;

    private String title3;

    private String cText1;

    private String cText2;

    private String title4;

    private String dText1;

    private String dText2;


}
