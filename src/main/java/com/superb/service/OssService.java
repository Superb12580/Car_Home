package com.superb.service;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @Author Superb
 * @Description
 * @Date 2021/2/11
 */
public interface OssService {
    /**
     * 上传头像到oss
     * @param file
     * @return
     */
    String uploadFile(MultipartFile file, String dir);


    /**
     * 删除单个文件
     * @param pathFile
     */
    void deleteFile(String pathFile);

    /**
     * 上传视频到阿里云
     * @param file
     * @return
     */
    String uploadVideoAly(MultipartFile file);

    /**
     * 删除多个阿里云视频的方法
     * @param videoIdList
     */
    void removeMoreAlyVideo(List videoIdList);
}
