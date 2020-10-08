package com.uvideo.seckill.system.seckill.order;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;

/**
 * 订单详情
 *
 * @author wencai.xu
 */

@Data
@Entity
@Table(name = "order_info")
@JsonIgnoreProperties(value = { "hibernateLazyInitializer", "handler"})
public class OrderInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Long id;
    private String userId;
    private String goodsId;
    private String deliveryAddrId;
    private String goodsName;
    private String goodsCount;
    private String goodsPrice;
    private String orderChannel;
    private String status;
    private String createDate;
    private String payDate;
}
