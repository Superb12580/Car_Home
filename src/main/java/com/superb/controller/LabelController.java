package com.superb.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
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
import java.util.Map;

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
     * 查询所有标签 包括delete
     * @return
     */
    @GetMapping("/listAdmin")
    public Result listAdmin(@RequestParam(defaultValue = "1", name = "current") Integer current,
                             @RequestParam(defaultValue = "5", name = "size") Integer size){
        Page<Map<String, Object>> page = new Page<>(current, size);
        IPage<List<Label>> listIPage = labelService.listAdmin(page);
        return Result.success(listIPage);
    }

    /**
     * 添加编辑标签
     * @param label
     * @return
     */
    @PostMapping("/addOrPutAdmin")
    public Result addOrPutAdmin(@RequestBody Label label){

        if (label == null || label.getLabelText() == null || "".equals(label.getLabelText())){
            return Result.fail(250);
        }
        if (label.getLabelId() != null) {
            labelService.updateAdmin(label);
            return Result.success("标签修改成功");
        }
        labelService.save(label);
        return Result.success("标签添加成功");
    }


    /**
     * 禁用标签（管理员）
     * @param label
     * @return
     */
    @PostMapping("/jy")
    public Result jy(@RequestBody Label label){

        if (label == null || label.getLabelId() == null){
            return Result.fail(250);
        }
        label.setDeleted(label.getDeleted().equals(MapUtil.YJY) ? MapUtil.YKQ : MapUtil.YJY);
        labelService.jyAdmin(label);
        return Result.success("操作成功");
    }

    /**
     * 彻底删除标签（管理员）
     * @param label
     * @return
     */
    @PostMapping("/deleteAdmin")
    public Result deleteAdmin(@RequestBody Label label){

        if (label == null || label.getLabelId() == null){
            return Result.fail(250);
        }
        labelService.deleteAdmin(label.getLabelId());
        return Result.success("标签删除成功");
    }

    /**
     * 批量删除标签（管理员）
     * @param str
     * @return
     */
    @PostMapping("/deletes")
    public Result deletes(@RequestParam String str){

        List<Integer> list = Utils.stringToInteger(str);
        if (list == null){
            return Result.fail(250);
        }
        labelService.removeByIds(list);
        return Result.success("批量删除成功");
    }
}
