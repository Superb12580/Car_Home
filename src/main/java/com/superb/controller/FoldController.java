package com.superb.controller;


import com.superb.common.MapUtil;
import com.superb.entity.Fold;
import com.superb.service.FoldService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-03-24
 */
@RestController
@RequestMapping("/fold")
public class FoldController {

    @Autowired
    private FoldService foldService;

    private int count = 0;

    /**
     * 折叠项展示
     * @return
     */
    @GetMapping("/item")
    public Result item() {
        List<Map<String, Object>> list = foldService.listMaps();


        return Result.success(list.get(++count % list.size()));
    }

}
