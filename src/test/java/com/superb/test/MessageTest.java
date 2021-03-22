package com.superb.test;

import com.superb.entity.Forward;
import com.superb.entity.Message;
import com.superb.service.ForwardService;
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
public class MessageTest {
    @Autowired
    private MessageService messageService;

    @Test
    public void test1(){
        Message message = new Message();
        message.setMessageTitle("点赞通知");
        message.setMessageText("superb点赞了你的动态");
        message.setThatId(1L);
        message.setThisId(2L);
        message.setMessageType(1);
        messageService.save(message);
    }
}
