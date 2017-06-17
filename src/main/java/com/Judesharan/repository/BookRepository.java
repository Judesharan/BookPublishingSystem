package com.Judesharan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Judesharan.model.Book;

public interface BookRepository extends JpaRepository<Book, Long>{

}
