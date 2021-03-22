package com.superb.test;

import com.superb.entity.Agree;
import com.superb.entity.Comment;
import com.superb.entity.Message;
import com.superb.service.AgreeService;
import com.superb.service.CommentService;
import com.superb.service.MessageService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author Superb
 * @date 2020/11/17 - 18:50
 * @E_mail superb12580@163.com
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CommentTest {
    @Autowired
    private CommentService commentService;

    @Autowired
    private MessageService messageService;

    @Test
    public void test1(){
        Comment comment = new Comment();
        comment.setCommentText("宝马三系满足我对汽车的所有需求");
        comment.setEssayId(2L);
        comment.setUserId(3L);
        commentService.save(comment);

        Message message = new Message();
        message.setMessageType(1);
        message.setThatId(1L);
        message.setThisId(2L);
        message.setEssayId(2L);
        message.setMessageTitle("评论通知");
        message.setMessageText("用户smz评论的你的动态");
        messageService.save(message);
    }
}
