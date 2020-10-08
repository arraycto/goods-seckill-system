package com.uvideo.seckill.system.controller;

import com.uvideo.seckill.system.seckill.good.Goods;
import com.uvideo.seckill.system.service.ConfigService;
import com.uvideo.seckill.system.service.GoodsService;
import com.uvideo.seckill.system.service.cache.RedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author wencai.xu
 */
@RequestMapping("/user")
@RestController
public class UserController {

    private final GoodsService userService;

    private final ConfigService configService;

    @Autowired
    public UserController(GoodsService userService, ConfigService configService) {
        this.userService = userService;
        this.configService = configService;
    }

    @RequestMapping(value = "/getAllUser",method = RequestMethod.GET)
    @ResponseBody
    private Goods getAllUser(){
        return userService.getOne(1L);
    }

    @RequestMapping(value = "/cacheConfig",method = RequestMethod.GET)
    @ResponseBody
    private RedisCache getCacheConfig(){
        return configService.getRedisCache();
    }
}
