package com.superb.controller;


import com.superb.util.Result;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

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

    /**
     * 上传头像的方法
     * @param file
     * @return
     */
    @PostMapping
    public Result uploadOssFile(MultipartFile file) {
        //获取上传文件  MultipartFile
        //返回上传到oss的路径
//        String url = ossService.uploadFileAvatar(file);
//        return Result.ok().data("url",url);
        return null;
    }
}
