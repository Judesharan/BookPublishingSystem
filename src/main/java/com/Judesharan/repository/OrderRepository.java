package com.Judesharan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Judesharan.model.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {

	public List<Order> findByUserIdOrderByIdDesc(int userid);

	public List<Order> findByOrderByIdDesc();
}
