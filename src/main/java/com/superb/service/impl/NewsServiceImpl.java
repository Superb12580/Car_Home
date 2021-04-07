package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.News;
import com.superb.mapper.NewsMapper;
import com.superb.service.NewsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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

    @Override
    public Map<String, Object> newsById(Integer id) {
        return baseMapper.newsById(id);
    }

    @Override
    public IPage<Map<String ,Object>> listNews(Page<?> page) {
        return baseMapper.listNews(page);
    }

    @Override
    public IPage<Map<String, Object>> itemNews(Page<?> page, Long userId) {
        return baseMapper.itemNews(page, userId);
    }

    @Override
    public Map<String, Object> itemById(Integer id) {
        return baseMapper.itemById(id);
    }

    @Override
    public IPage<Map<String, Object>> itemNewsSy(Page<?> page, Long userId) {
        return baseMapper.itemNewsSy(page, userId);
    }
}
