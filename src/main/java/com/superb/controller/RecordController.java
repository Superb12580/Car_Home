package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Record;
import com.superb.service.RecordService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-02
 */
@RestController
@RequestMapping("/record")
public class RecordController {

    @Autowired
    private RecordService recordService;

    @GetMapping("/listAdmin")
    public Result list(@RequestParam(defaultValue = "1", name = "current") Integer current,
                       @RequestParam(defaultValue = "8", name = "size") Integer size) {
        Page<Record> page = new Page<>(current, size);
        IPage<Record> recordIPage = recordService.page(page);
        return Result.success(recordIPage);
    }

}
