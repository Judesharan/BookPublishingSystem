package com.Judesharan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Judesharan.model.Book;
import com.Judesharan.model.User;
@Controller
@RequestMapping("order")
public class BookSalesController {

	@GetMapping("/addToCart")
	public String addToCart(HttpSession session, ModelMap modelMap) {

		User user = (User) session.getAttribute("USER_LOGGED");
		
		Book book = (Book) session.getAttribute("SELECTED_BOOK");

		session.setAttribute("USER_LOGGED", user);
		session.setAttribute("SELECTED_BOOK", book);

		return "order/AddCart";
	}
}