package com.superb.controller;


import com.superb.entity.Label;
import com.superb.mapper.LabelMapper;
import com.superb.service.LabelService;
import com.superb.util.Result;
import com.superb.util.Utils;
import freemarker.template.utility.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@RestController
@RequestMapping("/label")
public class LabelController {

    @Autowired
    private LabelService labelService;


    /**
     * 查询所有标签
     * @return
     */
    @GetMapping("/list")
    public Result list(){
        List<Label> list = labelService.list();
        return Result.success(list);
    }

    /**
     * 添加标签
     * @param label
     * @return
     */
    @PostMapping("/add")
    public Result add(@RequestBody Label label){

        if (label == null || label.getLabelText() == null || "".equals(label.getLabelText()) || label.getLabelId() != null){
            return Result.fail(250);
        }
        boolean b = labelService.save(label);
        return b ? Result.success("标签添加成功",null) : Result.fail(400);
    }

    /**
     * 修改标签（管理员）
     * @param label
     * @return
     */
    @PostMapping("/put")
    public Result put(HttpServletRequest request, @RequestBody Label label){

        if (label == null || label.getLabelText() == null || "".equals(label.getLabelText()) || label.getLabelId() == null){
            return Result.fail(250);
        }
        boolean b = labelService.updateById(label);
        return b ? Result.success("标签修改成功",null) : Result.fail(400);

    }

    /**
     * 删除标签（管理员）
     * @param label
     * @return
     */
    @PostMapping("/delete")
    public Result delete(HttpServletRequest request, @RequestBody Label label){

        if (label == null || label.getLabelId() == null){
            return Result.fail(250);
        }
        labelService.removeById(label.getLabelId());
        return Result.success("标签删除成功",null);
    }

    /**
     * 批量删除标签（管理员）
     * @param str
     * @return
     */
    @PostMapping("/deletes")
    public Result deletes(HttpServletRequest request, @RequestParam String str){

        List<Integer> list = Utils.stringToInteger(str);
        if (list == null){
            return Result.fail(250);
        }
        boolean b = labelService.removeByIds(list);
        if (b){
            return Result.success("批量删除成功",null);
        }
        return Result.fail("标签不存在，请重试");
    }
}
