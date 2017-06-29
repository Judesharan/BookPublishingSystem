package com.Judesharan.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "book_sales_items")
public class BookSalesItems {

	@Id
	@GeneratedValue
	@Column(name = "items_id")
	private int items_id;

	@ManyToOne
	@JoinColumn(name = "book_sales_id")
	private BookSales bookSales;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "book_isbn")
	private Book book;
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "order_date")
	private LocalDateTime orderDate;
}