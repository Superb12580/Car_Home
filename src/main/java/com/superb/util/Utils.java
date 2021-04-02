package com.superb.util;

import com.superb.dto.RegisterLogin;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * @author Superb
 * @date 2021/1/13 - 13:25
 * @E_mail superb12580@163.com
 */
public class Utils {


    /**
     * 生成新的文件名
     * @param fileName 源文件名
     * @return
     */
    public static String getFileName(String fileName){
        if (fileName != null) {
            String suffix = fileName.substring(fileName.lastIndexOf("."));
            return UUID.randomUUID().toString().replace("-", "") + suffix;
        }
        return null;
    }

    public static String getUUID(){
        return UUID.randomUUID().toString().replace("-", "");
    }




    /**
     * 字符串转集合
     * 用于批量删除
     * @param str
     * @return
     */
    public static List<Integer> stringToInteger(String str){
        if (str == null || "".equals(str)){
            return null;
        }
        String[] split = str.split("-");
        List<Integer> list = new ArrayList<>();
        for (String s : split){
            list.add(Integer.parseInt(s));
        }
        return list;
    }

    public static Result codeTest(RegisterLogin login, RegisterLogin registerLogin) {
        if (registerLogin == null || registerLogin.getFlag() != 1) {
            return Result.fail(400);
        }
        if (login == null || login.getCode() == null) {
            return Result.fail(250);
        }
        if (login.getCode().equalsIgnoreCase(registerLogin.getCode())) {
            //标志量
            registerLogin.setFlag(2);
            return Result.success("校验成功", null);
        }
        return Result.fail("验证码错误");
    }
}
