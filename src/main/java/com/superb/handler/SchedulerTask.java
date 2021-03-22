package com.superb.handler;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.superb.common.MapUtil;
import com.superb.entity.User;
import com.superb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 定时任务
 * @author 高超
 * @date 2021/3/18 - 14:36
 */
@Component
public class SchedulerTask {

    @Autowired
    private UserService userService;

    // 每天12点执行
    @Scheduled(cron="0 0 12 * * ?")
    private void process(){
        User user = new User();
        user.setGraded(MapUtil.WQD);
        userService.update(user, new QueryWrapper<User>().eq("graded", MapUtil.YQD));
    }
}
