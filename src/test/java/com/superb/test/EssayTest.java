package com.superb.test;

import com.superb.entity.Essay;
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
public class EssayTest {
    @Autowired
    private EssayService essayService;

    @Test
    public void test1(){
        Essay essay = new Essay();
        essay.setEssayTitle("换刹车盘也要磨合？刹车维保两三事");
        essay.setEssayText("刹车不好使了？有异响？踩着没底？说明你的刹车系统存在衰减或者过度磨损了，关于刹车更换，我们大多数人都会先想到4S店或汽修厂，虽然说更换上不需要太费心，但对于每天都在路上跑的我们来讲，如何及时的发现衰减，得知异常，尽快送修，这却是非常有必要的！毕竟咱们也不会每天都随车带着技师。");
        essay.setUserId(3L);
        essayService.save(essay);
    }
}
