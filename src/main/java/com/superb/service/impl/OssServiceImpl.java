package com.superb.service.impl;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.superb.service.OssService;
import com.superb.util.ConstantProperties;
import com.superb.util.Utils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @Author lzc
 * @Description
 * @Date 2021/2/11
 */
@Service
public class OssServiceImpl implements OssService {
    // 工具类获取值
//    private final  String endpoint = ConstantProperties.END_POINT;
//    private final String accessKeyId = ConstantProperties.ACCESS_KEY_ID;
//    private final String accessKeySecret = ConstantProperties.ACCESS_KEY_SECRET;
//    private final String bucketName = ConstantProperties.BUCKET_NAME;
    @Override
    public String uploadFile(MultipartFile file, String dir) {
        String endpoint = ConstantProperties.END_POINT;
        String accessKeyId = ConstantProperties.ACCESS_KEY_ID;
        String accessKeySecret = ConstantProperties.ACCESS_KEY_SECRET;
        String bucketName = ConstantProperties.BUCKET_NAME;

        try {
            // 创建OSS实例。
            OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);

            // 获取上传文件输入流
            InputStream inputStream = file.getInputStream();
            // 获取文件名称
            String fileName = file.getOriginalFilename();

            String fileNameNew = Utils.getFileName(fileName);


            StringBuilder sb = new StringBuilder();
            sb.append(dir).append('/').append(fileNameNew);

            //调用oss方法实现上传
            //第一个参数  Bucket名称
            //第二个参数  上传到oss文件路径和文件名称
            //第三个参数  上传文件输入流
            ossClient.putObject(bucketName, sb.toString(), inputStream);

            // 关闭OSSClient。
            ossClient.shutdown();

            //把上传之后文件路径返回
            //需要把上传到阿里云oss路径手动拼接出来
            //https://lzc-online-learning.oss-cn-beijing.aliyuncs.com/lining.png
            return "https://" + bucketName + "." + endpoint + "/" + sb;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void deleteFile(String pathFile) {

        String endpoint = ConstantProperties.END_POINT;
        String accessKeyId = ConstantProperties.ACCESS_KEY_ID;
        String accessKeySecret = ConstantProperties.ACCESS_KEY_SECRET;
        String bucketName = ConstantProperties.BUCKET_NAME;

        String substring = pathFile.substring(pathFile.indexOf("car-home"));

        // 创建OSSClient实例。
        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);

        // 删除文件。如需删除文件夹，请将ObjectName设置为对应的文件夹名称。如果文件夹非空，则需要将文件夹下的所有object删除后才能删除该文件夹。
        ossClient.deleteObject(bucketName, substring);

        // 关闭OSSClient。
        ossClient.shutdown();
    }

    @Override
    public String uploadVideoAly(MultipartFile file) {
//        try {
//            //accessKeyId, accessKeySecret
//            //fileName：上传文件原始名称
//            String fileName = file.getOriginalFilename();
//            //title：上传之后显示名称
//            String title = fileName.substring(0, fileName.lastIndexOf("."));
//            //inputStream：上传文件输入流
//            InputStream inputStream = file.getInputStream();
//            UploadStreamRequest request = new UploadStreamRequest(ConstantPropertiesUtils.ACCESS_KEY_ID, ConstantPropertiesUtils.ACCESS_KEY_SECRET, title, fileName, inputStream);
//
//            UploadVideoImpl uploader = new UploadVideoImpl();
//            UploadStreamResponse response = uploader.uploadStream(request);
//
//            String videoId = null;
//            if (response.isSuccess()) {
//                videoId = response.getVideoId();
//            } else {
//                //如果设置回调URL无效，不影响视频上传，可以返回VideoId同时会返回错误码。
//                // 其他情况上传失败时，VideoId为空，此时需要根据返回错误码分析具体错误原因
//                videoId = response.getVideoId();
//            }
//            return videoId;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
        return null;
    }

    /**
     * 删除多个阿里云视频的方法
     *
     * @param videoIdList
     */
    @Override
    public void removeMoreAlyVideo(List videoIdList) {
//        try {
//            //初始化对象
//            DefaultAcsClient client = InitVodClient.initVodClient(ConstantPropertiesUtils.ACCESS_KEY_ID, ConstantPropertiesUtils.ACCESS_KEY_SECRET);
//            //创建删除视频request对象
//            DeleteVideoRequest request = new DeleteVideoRequest();
//
//            //videoIdList值转换成 1,2,3
//            String videoIds = StringUtils.join(videoIdList.toArray(), ",");
//
//            //向request设置视频id
//            request.setVideoIds(videoIds);
//            //调用初始化对象的方法实现删除
//            client.getAcsResponse(request);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }
}
