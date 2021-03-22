package com.superb.test;

import com.superb.entity.Agree;
import com.superb.entity.Essay;
import com.superb.service.AgreeService;
import com.superb.service.EssayService;
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
public class AgreeTest {
    @Autowired
    private AgreeService agreeService;

    @Test
    public void test1(){
        Agree agree = new Agree();
        agree.setEssayId(3L);
        agree.setUserId(3L);
        agreeService.save(agree);
    }
}
