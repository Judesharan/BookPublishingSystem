package com.Judesharan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Judesharan.model.Book;
import com.Judesharan.repository.BookRepository;

@Service
public class BookService {
	@Autowired
	private BookRepository bookRepository;

	public List<Book> findAll() {
		return bookRepository.findAll();
	}

	public Book findOne(Long isbn) {
		return bookRepository.findOne(isbn);
	}
}
