package com.uvideo.seckill.system.mapper.good;

import com.uvideo.seckill.system.seckill.good.SeckillGoods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author wencai.xu
 */
@Repository
public interface SeckillGoodsMapper extends JpaRepository<SeckillGoods,Long> {
}
