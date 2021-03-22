package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Essay;
import com.superb.entity.Message;
import com.superb.entity.User;
import com.superb.service.EssayService;
import com.superb.service.MessageService;
import com.superb.service.RecordService;
import com.superb.service.UserService;
import com.superb.util.Result;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServlet;
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
@RequestMapping("/message")
public class MessageController {
    @Autowired
    private MessageService messageService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;


    /**
     * 我的所有消息
     * message_type 指定消息类型  0系统 1动态 2私信
     * 前端进行分模块显示
     * @param
     * @param
     * @return
     */
    @GetMapping("/item")
    public Result item(@RequestParam(defaultValue = "1",name = "current") Integer current,
                       @RequestParam(defaultValue = "5",name = "size") Integer size,
                       @RequestParam("messageType") Integer messageType,
                       @RequestParam Long userId){

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> mapIPage = messageService.superbMessageById(page, userId, messageType);
        return Result.success(mapIPage);
    }




    /**
     * 发送消息
     * @param message
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Message message){


        // 接收者
        User user = userService.getById(message.getThisId());
        // 发送者
        User user2 = userService.getById(message.getThatId());
        // ==================日志==================
        recordService.xr(user2.getUserId().toString(), user2.getUserName(), MapUtil.FSXX + "：" + message.getMessageTitle(), user.getUserId().toString(), user.getUserName());

        messageService.save(message);
        return Result.success("发送成功",null);
    }

    /**
     * 删除
     * @param message
     * @return
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Message message){
        // 接收者
        User user = userService.getById(message.getThisId());
        // 发送者
        User user2 = userService.getById(message.getThatId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCXX + "：" + message.getMessageTitle(), user2.getUserId().toString(), user2.getUserName());

        messageService.removeById(message.getMessageId());
        return Result.success("消息删除成功");
    }

    /**
     * 批量删除消息
     * @param messageIds
     * @return
     */
    @PostMapping("/deletes")
    public Result deletes(@RequestBody List<Integer> messageIds){

        messageService.removeByIds(messageIds);
        return Result.success("批量删除成功");

    }


    /**
     * 查看所有消息
     * @param currentPage
     * @return
     */
    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1",value = "currentPage") int currentPage,
                       @RequestParam(defaultValue = "5",name = "pageSize") int pageSize){
        Page<Message> page = new Page<>(currentPage, pageSize);
        IPage<Message> data = messageService.page(page,new QueryWrapper<Message>().orderByDesc("create_time"));
        return Result.success(data);
    }
}
