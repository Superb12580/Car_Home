package com.superb.controller;


import cn.hutool.core.bean.BeanUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.Item;
import com.superb.dto.RegisterLogin;
import com.superb.entity.Attention;
import com.superb.entity.Collection;
import com.superb.entity.User;
import com.superb.service.AgreeService;
import com.superb.service.AttentionService;
import com.superb.service.CollectionService;
import com.superb.service.UserService;
import com.superb.util.FileUpload;
import com.superb.util.Result;
import com.superb.util.SendMail;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 * <p>
 * 用户
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/user")
public class UserController {


    @Autowired
    private RegisterLogin registerLogin;

    @Autowired
    private UserService userService;

    @Autowired
    private SendMail sendMail;


    /**
     * 显示全部用户（管理员）
     * flag 0隐藏已删除 1显示
     * currentPage 当前页码
     */
    @GetMapping("/adminList")
    public Result adminList(@RequestParam(defaultValue = "0", value = "flag") Integer flag,
                            @RequestParam(defaultValue = "1", value = "currentPage") int currentPage) {


        Page<User> page = new Page<>(currentPage, MapUtil.sizeB);
        //默认不显示已删除用户
        IPage<User> list = userService.page(page);
        //显示已删除
        if (flag == 1) {
            list = userService.adminListDeleted(page);
        }

        return Result.success(list);
    }


    /**
     * 模糊查询（管理员）
     */
    @GetMapping("/adminLike")
    public Result adminList(@RequestParam(defaultValue = "0", name = "flag") Integer flag,
                            @RequestParam(defaultValue = "", name = "str") String str,
                            @RequestParam(defaultValue = "1", value = "currentPage") Integer currentPage) {


        Page<User> page = new Page<>(currentPage, MapUtil.sizeB);
        //默认不显示已删除用户
        IPage<User> list = userService.page(page, new QueryWrapper<User>()
                .like("user_id", str).or()
                .like("user_name", str).or()
                .like("email", str).or()
                .like("sign", str).or()
                .like("gender", "男".equals(str) ? 1 : 2).or()
                .like("date_birth", str).or()
                .like("create_time", str).or()
                .like("update_time", str).or()
                .like("grade", str));
        //显示已删除
        if (flag == 1) {
            list = userService.adminLikeDeleted(page, str);
        }
        return Result.success(list);
    }

    /**
     * 修改用户信息（管理员）
     *
     * @param user
     * @return
     */
    @PostMapping("adminPut")
    public Result adminPut(@RequestBody User user) {

        //用户名邮箱已存在
        List<User> users = userService.getUserNotId(user.getUserId());
        for (User us : users) {
            if (us.getUserName().equals(user.getUserName())) {
                return Result.fail("用户名已存在");
            }
            if (us.getEmail().equals(user.getEmail())) {
                return Result.fail("邮箱已存在");
            }
        }


        userService.updateById(user);
        return Result.success("修改成功", null);
    }

    /**
     * 禁用用户（管理员）
     *
     * @param item
     * @return
     */
    @PostMapping("adminDelete")
    public Result adminDelete(@RequestBody Item item) {

        userService.removeById(item.getUserId());

        return Result.success("禁用成功");

    }

    /**
     * 批量禁用用户（管理员）
     *
     * @param userIds
     * @return
     */
    @PostMapping("adminDeletes")
    public Result adminDeletes(@RequestBody List<Integer> userIds) {


        userService.removeByIds(userIds);

        return Result.success("禁用成功");

    }

    /**
     * 添加用户（管理员）
     *
     * @param user
     * @return
     */
    @PostMapping("/adminAdd")
    public Result adminAdd(@RequestBody User user) {


        user.setPassword(SecureUtil.md5(user.getPassword()));
        userService.save(user);
        return Result.success("添加成功", null);

    }

    /****************************      以下是用户操作      ****************************/

    @Autowired
    private CollectionService collectionService;

    @Autowired
    private AttentionService attentionService;

    //显示个人资料
    @GetMapping("/item")
    public Result item(@RequestParam("userId") Long userId) {

        // 保存收藏关注粉丝数
        int collectionCount = collectionService.count(new QueryWrapper<Collection>().eq("user_id", userId));
        int attentionCount = attentionService.count(new QueryWrapper<Attention>().eq("this_id", userId));
        int fansCount = attentionService.count(new QueryWrapper<Attention>().eq("that_id", userId));

        User user = userService.getById(userId);
        Item item = new Item();
        item.setAttentionCount(attentionCount);
        item.setCollectionCount(collectionCount);
        item.setFansCount(fansCount);
        BeanUtil.copyProperties(user, item);
        return Result.success(item);
    }


    /**
     * 签到
     *
     * @param item
     * @return
     */
    @PostMapping("/grade")
    public Result grade(@RequestBody Item item) {

        User user = userService.getById(item.getUserId());
        user.setGrade(user.getGrade() + 10);
        // 签到标志
        user.setGraded(MapUtil.YQD);
        userService.updateById(user);
        return Result.success("签到成功，+10积分");
    }


    @Value("${spring.servlet.multipart.location:default}")
    private String path = "G:/upload_file/";

    /**
     * 编辑资料(要有id)
     *
     * @param item
     * @return
     */
    @PostMapping("/put")
    public Result put(HttpServletRequest request, @RequestBody Item item) {


        //用户名已存在
        List<User> users = userService.getUserNotId(item.getUserId());
        for (User us : users) {
            if (us.getUserName().equals(item.getUserName())) {
                return Result.fail("用户名已存在");
            }
        }


        User user = new User();
        BeanUtil.copyProperties(item, user);
        //上传图片
//        String filePath = FileUpload.upload(file, path, file.getOriginalFilename());
//        user.setPhoto(filePath);
        boolean flag = userService.updateById(user);
        if (flag) {
            //回传信息，用于更新前端session
            return Result.success("修改成功", item);
        }
        return Result.fail(400);
    }


    /**
     * 修改密码
     * 传入id、旧密码、新密码
     *
     * @param login
     * @return
     */
    @PostMapping("/password")
    public Result password(@RequestBody RegisterLogin login) {

        User user = userService.getById(login.getUserId());
        if (!user.getPassword().equals(SecureUtil.md5(login.getPassword()))) {
            return Result.fail("密码错误，请重试");
        }
        if (login.getPassword().equals(login.getNewPassword())) {
            return Result.fail("新密码与原密码不能相同");
        }
        user.setPassword(SecureUtil.md5(login.getNewPassword()));
        userService.updateById(user);
        return Result.success("修改成功");

    }


    /****************************      邮箱换绑      ****************************/

    /**
     * 旧邮箱(传id)
     * 保证id和邮箱匹配
     *
     * @param login
     * @return
     */
    @PostMapping("/oldTest")
    public Result oldTest(@RequestBody RegisterLogin login) {
        //判断前端传参
        if (login == null || login.getUserId() == null || login.getEmail() == null) {
            return Result.fail(250);
        }


        try {
            //发送验证码
            String code = sendMail.sendMailHelper(login.getEmail());
            String email = login.getEmail();
            this.registerLogin.setCode(code);
            this.registerLogin.setEmail(email);
            this.registerLogin.setUserId(login.getUserId());
            //标志量
            this.registerLogin.setFlag(1);
            return Result.success("验证码已发送，请注意查收", null);
        } catch (MessagingException e) {
            e.printStackTrace();
            return Result.fail("发送失败");
        }
    }


    /**
     * 老验证码
     *
     * @param login
     * @return
     */
    @PostMapping("/oldCode")
    public Result oldCode(@RequestBody RegisterLogin login) {
        return Utils.codeTest(login, this.registerLogin);
    }


    /**
     * 新邮箱
     *
     * @param login
     * @return
     */
    @PostMapping("/newTest")
    public Result newTest(@RequestBody RegisterLogin login) {
        if (this.registerLogin == null || this.registerLogin.getFlag() != 2) {
            return Result.fail(400);
        }
        //判断前端传参
        if (login == null || login.getEmail() == null) {
            return Result.fail(250);
        }

        User user = userService.getOne(new QueryWrapper<User>().eq("email", login.getEmail()));
        //判断该邮箱是否已注册
        if (user == null) {
            try {
                //发送验证码
                String code = sendMail.sendMailHelper(login.getEmail());
                String email = login.getEmail();
                this.registerLogin.setCode(code);
                this.registerLogin.setEmail(email);
                //标志量
                this.registerLogin.setFlag(3);
                return Result.success("验证码已发送至新邮箱，请注意查收", null);
            } catch (MessagingException e) {
                e.printStackTrace();
                return Result.fail("发送失败");
            }
        }
        return Result.fail("该邮箱已绑定，请重试");
    }

    /**
     * 新验证码并换绑
     *
     * @param login
     * @return
     */
    @PostMapping("/newCode")
    public Result newCode(@RequestBody RegisterLogin login) {
        if (this.registerLogin == null || this.registerLogin.getFlag() != 3) {
            return Result.fail(400);
        }
        if (login == null || login.getCode() == null) {
            return Result.fail(250);
        }
        if (login.getCode().equalsIgnoreCase(this.registerLogin.getCode())) {

            User user = new User();
            user.setEmail(this.registerLogin.getEmail());
            user.setUserId(this.registerLogin.getUserId());
            boolean b = userService.updateById(user);
            if (!b) {
                return Result.fail("修改失败，请稍后再试");
            }
            //置0
            this.registerLogin.setFlag(0);
            //换绑邮箱，把新邮箱传至前端，更新前端session
            return Result.success("验证成功，邮箱已换绑", user.getEmail());
        }
        return Result.fail("验证码错误");
    }
}
