package com.superb.common;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @author Superb
 * @date 2021/1/5 - 17:25
 * @E_mail superb12580@163.com
 */
public class MapUtil {

    // 管理员Id
    public static final Long GLYID = 1L;


    // 签到标志量
    public static final Integer YQD = 1;
    public static final Integer WQD = 0;

    // 已关注
    public static final Integer YGZ = 1;
    // 互相关注
    public static final Integer HXGZ = 1;
    // 未关注
    public static final Integer WGZ = 0;

    // 日志使用
    public static final String ZCJCYZM = "注册接收验证码";
    public static final String ZCCG = "注册成功";
    public static final String DLCG = "登录成功";
    public static final String ZXCG = "注销成功";
    public static final String MMCW = "密码错误，登录失败";
    public static final String YHBCZ = "用户不存在，登录失败";
    public static final String MMXGCG = "密码修改成功";
    public static final String DZ = "点赞";
    public static final String QXDZ = "取消点赞";
    public static final String GZ = "关注";
    public static final String QXGZ = "取消关注";
    public static final String SC = "收藏";
    public static final String QXSC = "取消收藏";
    public static final String PL = "评论";
    public static final String SCPL = "删除评论";
    public static final String FBDT = "发表动态";
    public static final String SCDT = "删除动态";
    public static final String PLSCDT = "批量删除动态";
    public static final String ZFDT = "转发动态";
    public static final String SCZF = "删除转发";
    public static final String FSXX = "发送消息";
    public static final String SCXX = "删除消息";

    // 通知
    public static final String HYZCQCZJ = "欢迎注册汽车之家";
    public static final String XTTZ = "系统通知";
    public static final String DTTZ = "动态通知";

    // 消息类型
    public static final Integer XXLX_XT = 0;
    public static final Integer XXLX_DT = 1;
    public static final Integer XXLX_SX = 2;

    public static Map<Integer, String> XXLX_MAP = new LinkedHashMap<>();

    static {
        XXLX_MAP.put(XXLX_XT, "系统消息");
        XXLX_MAP.put(XXLX_DT, "动态消息");
        XXLX_MAP.put(XXLX_SX, "私信");
    }





    public static final Integer sizeA = 5;
    public static final Integer sizeB = 8;
    public static final Integer sizeC = 10;
    public static final Integer sizeD = 15;

    public final static Map<Integer, String> CAR_QDLX = new HashMap<>();

    static {
        CAR_QDLX.put(0,"前置前驱");
        CAR_QDLX.put(1,"前置后驱");
        CAR_QDLX.put(2,"前后四驱");
    }

    public final static Map<Integer, String> CAR_ZDLX = new HashMap<>();

    static {
        CAR_ZDLX.put(0,"机械制动");
        CAR_ZDLX.put(1,"电子制动");
    }

    public final static Map<Integer, String> CAR_JQFS = new HashMap<>();

    static {
        CAR_JQFS.put(0,"自然吸气");
        CAR_JQFS.put(1,"涡轮增压");
        CAR_JQFS.put(2,"机械增压");
    }

    public final static Map<Integer, String> CAR_HBBZ = new HashMap<>();

    static {
        CAR_HBBZ.put(0,"国V");
        CAR_HBBZ.put(1,"国VI");
    }
}
