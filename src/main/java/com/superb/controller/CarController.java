package com.superb.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.superb.common.MapUtil;
import com.superb.entity.Car;
import com.superb.entity.Label;
import com.superb.entity.Style;
import com.superb.handler.MyMetaObjectHandler;
import com.superb.service.CarService;
import com.superb.service.RecordAdminService;
import com.superb.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Superb
 * @since 2021-04-14
 */
@RestController
@RequestMapping("/car")
public class CarController {

    @Autowired
    private CarService carService;

    @Autowired
    private RecordAdminService recordAdminService;


    /**
     * 查询所有style_id 相关car
     * @return
     */
    @GetMapping("/listAdminByStyleId")
    public Result listAdminByStyleId(@RequestParam("styleId") Integer styleId){
        List<Car> cars = carService.selectAdmin(styleId);
        return Result.success(cars);
    }

    /**
     * 查询所有car
     * @return
     */
    @GetMapping("/listAdmin")
    public Result listAdmin(@RequestParam(defaultValue = "1", name = "current") Integer current,
                            @RequestParam(defaultValue = "8", name = "size") Integer size){
        Page<Car> page = new Page<>(current, size);
        IPage<Car> carIPage = carService.selectAdminList(page);
        return Result.success(carIPage);
    }

    /**
     * 下架
     * @param car
     * @return
     */
    @PostMapping("deleteAdmin")
    public Result deleteAdmin(@RequestBody Car car) {
        // 管理员日志
        recordAdminService.xr("下架Car：" + car.getCarName());
        carService.removeById(car.getCarId());
        return Result.success("已下架");
    }

    /**
     * 上架
     * @param car
     * @return
     */
    @PostMapping("/sjAdmin")
    public Result sjAdmin(@RequestBody Car car) {
        car.setDeleted(MapUtil.WSC);
        car.setUpdateTime(MyMetaObjectHandler.getDateString(new Date()));
        // 管理员日志
        recordAdminService.xr("上架Car：" + car.getCarName());
        carService.updateAdmin(car);
        return Result.success("已上架");
    }

}
