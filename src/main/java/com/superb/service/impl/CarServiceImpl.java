package com.superb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.entity.Car;
import com.superb.mapper.CarMapper;
import com.superb.service.CarService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
@Service
public class CarServiceImpl extends ServiceImpl<CarMapper, Car> implements CarService {
    @Override
    public List<Car> selectAdmin(Integer styleId) {
        return baseMapper.selectAdmin(styleId);
    }

    @Override
    public IPage<Car> selectAdminList(Page<?> page) {
        return baseMapper.selectAdminList(page);
    }

    @Override
    public void updateAdmin(Car car) {
        baseMapper.updateAdmin(car);
    }

    @Override
    public void updateCar(Car car) {
        baseMapper.updateCar(car);
    }
}
