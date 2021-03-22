package com.superb.dto;

import com.superb.entity.Attention;
import com.superb.entity.User;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author Superb
 * @date 2020/11/19 - 13:56
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class AttentionDto extends Attention implements Serializable {
    /**
     * 查询关注时，代表我关注的用户
     * 查询粉丝时，代表我的粉丝
     */
    private User user;


}
