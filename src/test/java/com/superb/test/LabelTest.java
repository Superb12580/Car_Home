package com.superb.test;

import com.superb.entity.Label;
import com.superb.service.LabelService;
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
public class LabelTest {
    @Autowired
    private LabelService labelService;

    @Test
    public void test1(){
        Label label = new Label();
        label.setLabelText("汽车保养");
        labelService.save(label);
    }
}
