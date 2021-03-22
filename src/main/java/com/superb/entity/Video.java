package com.superb.entity;

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
public class Video implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 视频路径
     */
    private String videoUrl;

    /**
     * 动态id
     */
    private Long essayId;

    /**
     * 车型id
     */
    private Integer styleId;


}
