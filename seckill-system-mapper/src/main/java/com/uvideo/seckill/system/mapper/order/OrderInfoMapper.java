package com.uvideo.seckill.system.mapper.order;

import com.uvideo.seckill.system.seckill.order.OrderInfo;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author wencai.xu
 */
public interface OrderInfoMapper extends JpaRepository<OrderInfo,Long> {
}
