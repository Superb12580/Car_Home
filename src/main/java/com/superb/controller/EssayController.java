package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.dto.EssayDto;
import com.superb.entity.Essay;
import com.superb.entity.User;
import com.superb.service.EssayService;
import com.superb.service.RecordService;
import com.superb.service.UserService;
import com.superb.util.Result;
import com.superb.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/essay")
public class EssayController {
    @Autowired
    private EssayService essayService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;

    /**
     * 显示所有动态
     *
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/list")
    public Result list(@RequestParam(defaultValue = "1", value = "current") Integer current,
                       @RequestParam(defaultValue = "5", name = "size") Integer size) {
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> essayDtoIPage = essayService.superbAllEssay(page);
        return Result.success(essayDtoIPage);
    }


    /**
     * 显示个人动态
     *
     * @param userId
     * @param current
     * @param size
     * @return
     */
    @GetMapping("/user")
    public Result item(@RequestParam("userId") Long userId,
                       @RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "5", name = "size") Integer size) {

        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<Map<String, Object>> essayDtoIPage = essayService.superbEssayById(page, userId);
        return Result.success(essayDtoIPage);
    }

    /**
     * 显示一条动态  详细
     *
     * @param essayId
     * @return
     */
    @GetMapping("/item")
    public Result item(@RequestParam("essayId") Long essayId) {
        EssayDto essayDto = essayService.superbByEssayId(essayId);
        return Result.success(essayDto);
    }

    /**
     * 发表动态
     *
     * @param map
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Map<String, Object> map) {
        Essay essay = new Essay();
        essay.setUserId(((Integer) map.get("userId")).longValue());
        essay.setEssayTitle(map.get("essayTitle").toString());
        essay.setEssayText(map.get("essayText").toString());
        StringBuilder sb = new StringBuilder();
        final List<Integer> list = (List<Integer>) map.get("essayLabel");
        for (Integer in : list) {
            sb.append(in.toString()).append(',');
        }
        sb.deleteCharAt(sb.length() - 1);
        essay.setEssayLabel(sb.toString());
        User user = userService.getById(essay.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.FBDT, "", essay.getEssayTitle());
        essayService.save(essay);
        return Result.success("发表成功");
    }

    /**
     * 删除动态
     *
     * @param essay
     * @retur
     */
    @PostMapping("/delete")
    public Result delete(@RequestBody Essay essay) {

        User user = userService.getById(essay.getUserId());
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.SCDT, essay.getEssayId().toString(), essay.getEssayTitle());
        essayService.removeById(essay.getEssayId());
        return Result.success("删除成功");

    }

    /**
     * 批量删除动态
     *
     * @param str
     * @param userId
     * @return
     */
    @PostMapping("/deletes")
    public Result deletes(@RequestParam("str") String str, @RequestParam("userId") Long userId) {

        List<Integer> list = Utils.stringToInteger(str);
        if (list == null || list.size() == 0) {
            return Result.fail(250);
        }
        User user = userService.getById(userId);
        // ==================日志==================
        recordService.xr(user.getUserId().toString(), user.getUserName(), MapUtil.PLSCDT, "", "");
        essayService.removeByIds(list);
        return Result.success("批量删除成功");
    }
}
