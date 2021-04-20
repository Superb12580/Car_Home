package com.superb.controller;


import com.superb.service.PhotoService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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
@RequestMapping("/photo")
public class PhotoController {

    @Autowired
    private PhotoService photoService;

    @GetMapping("/styleById")
    public Result styleById(@RequestParam("styleId") Integer styleId){
        List<Map<String, Object>> list = photoService.styleById(styleId);
        return Result.success(list);
    }
}
