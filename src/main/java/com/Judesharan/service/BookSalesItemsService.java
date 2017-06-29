package com.Judesharan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Judesharan.model.BookSalesItems;
import com.Judesharan.repository.BookSalesItemsRepository;

@Service
public class BookSalesItemsService {
	@Autowired
	private BookSalesItemsRepository bookSalesItemsRepository;

	public void save(BookSalesItems bookSalesItems) {
		bookSalesItemsRepository.save(bookSalesItems);
	}
}
