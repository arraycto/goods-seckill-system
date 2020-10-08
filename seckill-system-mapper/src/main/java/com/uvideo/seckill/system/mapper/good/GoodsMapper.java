package com.uvideo.seckill.system.mapper.good;

import com.uvideo.seckill.system.seckill.good.Goods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * @author wencai.xu
 */
@Repository
public interface GoodsMapper extends JpaRepository<Goods, Long>, JpaSpecificationExecutor<Goods>, Serializable {
}
