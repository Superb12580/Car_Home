package com.superb.test;

import com.superb.entity.Agree;
import com.superb.entity.Attention;
import com.superb.service.AgreeService;
import com.superb.service.AttentionService;
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
public class AttentionTest {
    @Autowired
    private AttentionService attentionService;

    @Test
    public void test1(){
        Attention attention = new Attention();
        attention.setThatId(2L);
        attention.setThisId(3L);
        attentionService.save(attention);
    }
}
