package com.Judesharan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Judesharan.model.BookSales;
import com.Judesharan.repository.BookSalesRepository;

@Service
public class BookSalesService {
	
	@Autowired
	private BookSalesRepository bookSalesRepository;
	
	public void save(BookSales bookSales) {
		bookSalesRepository.save(bookSales);
	}
}
