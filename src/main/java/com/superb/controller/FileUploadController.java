package com.superb.controller;

import com.superb.util.FileUpload;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ResourceLoader;
import java.util.Map;

/**
 * @author Superb
 * @date 2021/1/13 - 16:17
 * @E_mail superb12580@163.com
 */
@Controller
@RequestMapping("/file")
@Slf4j
public class FileUploadController {

    @RequestMapping("/index")
    public String index(){
        log.info("******************:" + path);
        return "index";
    }


//    private final ResourceLoader resourceLoader;
//
//    @Autowired
//    public FileUploadController(ResourceLoader resourceLoader) {
//        this.resourceLoader = resourceLoader;
//    }

    @Value("${spring.servlet.multipart.location:default}")
    private String path = "G:/upload_file/";


    /**
     *
     * @param file 要上传的文件
     * @return
     */
    @RequestMapping("fileUpload")
    public String upload(@RequestParam("fileName") MultipartFile file, Map<String, Object> map){

        // 上传成功或者失败的提示
        String msg = "";

        String fileName = FileUpload.upload(file, path, file.getOriginalFilename());

        if (!"".equals(fileName)){
            // 上传成功，给出页面提示
            msg = "上传成功！";
        }else {
            msg = "上传失败！";
        }

        // 显示图片
        map.put("msg", msg);
        map.put("fileName", fileName);


        return "index";
    }

    /**
     * 显示单张图片
     * @return
     */
//    @RequestMapping("show")
////    @ResponseBody
//    public ResponseEntity showPhotos(String fileName){
//
//        try {
//            // 由于是读取本机的文件，file是一定要加上的， path是在application配置文件中的路径
//            return ResponseEntity.ok(resourceLoader.getResource("file:" + path + fileName));
//        } catch (Exception e) {
//            return ResponseEntity.notFound().build();
//        }
//    }
}
