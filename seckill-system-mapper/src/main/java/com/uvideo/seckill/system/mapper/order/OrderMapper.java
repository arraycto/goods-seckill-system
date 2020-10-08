package com.uvideo.seckill.system.mapper.order;

import com.uvideo.seckill.system.seckill.order.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 *
 * @author wencai.xu
 */
@Repository
public interface OrderMapper extends JpaRepository<Order,Long> {
}
