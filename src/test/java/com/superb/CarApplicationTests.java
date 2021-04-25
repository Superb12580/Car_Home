package com.superb;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.dto.AttentionDto;
import com.superb.dto.EssayDto;
import com.superb.dto.Item;
import com.superb.entity.Label;
import com.superb.entity.Photo;
import com.superb.entity.User;
import com.superb.mapper.AttentionMapper;
import com.superb.mapper.EssayMapper;
import com.superb.service.LabelService;
import com.superb.service.PhotoService;
import com.superb.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
public class CarApplicationTests {

    @Autowired
    private UserService userService;

    @Autowired
    private LabelService labelService;



    @Test
    public void test1() {
        User user = new User();
        user.setUserName("smz");
        user.setPassword(SecureUtil.md5("123456"));
        user.setEmail("smz12580@vip.com");
        userService.save(user);
    }

    @Test
    public void test2() {
        Label label = new Label();
        label.setLabelId(1);
        label.setLabelText("147258");
        labelService.updateById(label);
    }

    @Test
    public void test3() {
        Item item = new Item();
        User user = userService.getOne(new QueryWrapper<User>().eq("user_id", 1));
        BeanUtil.copyProperties(user, item);
        System.out.println(user);
        System.out.println("**************");
        System.out.println(item);
    }

    @Test
    public void test4() {
        User user = new User();
        user.setGender(1);
        user.setUserId(2L);
        userService.updateById(user);
    }



}
