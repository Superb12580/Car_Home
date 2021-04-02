package com.superb.service.impl;

import com.superb.entity.Record;
import com.superb.mapper.RecordMapper;
import com.superb.service.RecordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-03-17
 */
@Service
public class
RecordServiceImpl extends ServiceImpl<RecordMapper, Record> implements RecordService {



    @Override
    public int xr(String userId, String userName, String nr, String objectId, String objectName) {
        Record record = new Record();
        record.setUserId(userId);
        record.setUserName(userName);
        record.setNr(nr);
        record.setObjectId(objectId);
        record.setObjectName(objectName);
        return baseMapper.insert(record);
    }

    @Override
    public int xr(String userId, String userName, String nr) {
        Record record = new Record();
        record.setUserId(userId);
        record.setUserName(userName);
        record.setNr(nr);
        return baseMapper.insert(record);
    }
}
