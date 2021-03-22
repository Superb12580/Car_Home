package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.AgreeDto;
import com.superb.dto.CommentDto;
import com.superb.entity.Comment;
import com.superb.entity.Essay;
import com.superb.entity.User;
import com.superb.service.CommentService;
import com.superb.service.EssayService;
import com.superb.service.RecordService;
import com.superb.service.UserService;
import com.superb.util.Result;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private EssayService essayService;

    @Autowired
    private UserService userService;

    /**
     * 返回一个用户的所有评论
     * 连接动态表
     * @param userId
     * @param current
     * @param size
     * @return
     */
    @GetMapping("item")
    public Result item(@RequestParam("userId") Long userId,
                       @RequestParam(defaultValue = "1",value = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = commentService.superbByUserId(page, userId);
        return Result.success(mapIPage);
    }

    /**
     * 添加评论
     * @param comment
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Comment comment){

        Essay essay = essayService.getById(comment.getEssayId());
        User user = userService.getById(comment.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.PL + "：" + comment.getCommentText(), essay.getEssayId().toString(), essay.getEssayTitle());
        commentService.save(comment);
        return Result.success("已评论");
    }

    /**
     * 删除评论
     * @param comment
     * @return
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Comment comment){

        Essay essay = essayService.getById(comment.getEssayId());
        User user = userService.getById(comment.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCPL + "：" + comment.getCommentText(), essay.getEssayId().toString(), essay.getEssayTitle());
        commentService.remove(new QueryWrapper<Comment>().eq("essay_id", comment.getEssayId()).eq("user_id", comment.getUserId()));
        return Result.success("评论已删除");
    }

}
