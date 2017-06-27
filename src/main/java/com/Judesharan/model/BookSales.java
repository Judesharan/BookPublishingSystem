package com.Judesharan.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "book_sales")

public class BookSales {
	@Id
	@GeneratedValue
	@Column(name = "sales_id")
	private int salesId;

	@ManyToOne
	@JoinColumn(name = "id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "isbn")
	private Book book;
	
	@Column(name = "price")
	private double price;
	
	@Column(name = "quantity")
	private int quantity;

	@Column(name = "total_amount")
	private double totalAmount;
	
	@Column(name = "order_date")
	private LocalDate orderDate;

	@Column(name = "status")
	private String status;
}