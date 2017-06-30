package com.Judesharan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Judesharan.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Integer> {

}
