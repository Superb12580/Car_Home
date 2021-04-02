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
 * @since 2021-04-02
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Video implements Serializable {

    private static final long serialVersionUID = 1L;

    private String videoId;

    /**
     * 视频路径
     */
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
     * 视频内容
     */
    private String videoText;

    /**
     * 发布id
     */
    private Long userId;


}
