package com.superb.test;

import com.superb.entity.Comment;
import com.superb.entity.Forward;
import com.superb.service.CommentService;
import com.superb.service.ForwardService;
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
public class ForwardTest {
    @Autowired
    private ForwardService forwardService;

    @Test
    public void test1(){
        Forward forward = new Forward();
        forward.setEssayId(1L);
        forward.setForwardTitle("nice");
        forward.setUserId(3L);
        forwardService.save(forward);
    }
}
