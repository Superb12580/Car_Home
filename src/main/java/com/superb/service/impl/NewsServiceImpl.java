package com.superb.service.impl;

import com.superb.entity.News;
import com.superb.mapper.NewsMapper;
import com.superb.service.NewsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-03-25
 */
@Service
public class NewsServiceImpl extends ServiceImpl<NewsMapper, News> implements NewsService {

    @Override
    public List<News> listWz(Integer total) {
        return baseMapper.listWz(total);
    }

    @Override
    public List<News> listPh(Integer total) {
        return baseMapper.listPh(total);
    }
}
