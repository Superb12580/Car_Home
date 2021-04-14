package com.superb.service.impl;

import com.superb.entity.Car;
import com.superb.mapper.CarMapper;
import com.superb.service.CarService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

}
