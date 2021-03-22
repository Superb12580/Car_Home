package com.superb.mapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Repository
public interface UserMapper extends BaseMapper<User> {

    /**
     * 只查询id和用户名和头像
     * @param userId
     * @return
     */
    User superbById(Long userId);

    /**
     * 查询所有包括已删除
     * @param page
     * @return
     */
    IPage<User> adminListDeleted(Page<?> page);

    /**
     * 模糊查询包括已删除
     * @param page
     * @param str
     * @return
     */
    IPage<User> adminLikeDeleted(Page<?> page,String str);

    /**
     * 查询除本人外所有 包括已删除 不分页
     * @return
     */
    List<User> getUserNotId(Long userId);

}
