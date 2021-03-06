package com.Judesharan.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Judesharan.model.Order;
import com.Judesharan.model.User;
import com.Judesharan.service.OrderService;

@Controller
@RequestMapping("orders")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@GetMapping("/myorders")
	public String myOrders(ModelMap modelMap, HttpSession session) {

		User loggedInUser = (User) session.getAttribute("USER_LOGGED");
		List<Order> list = orderService.findByUserIdOrderByIdDesc(loggedInUser.getId());
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/listmyorders";

	}

	@PostMapping("/save")
	public String save(@RequestParam("total_amount") double totalAmount, HttpSession session) {
		Order orderInCart = (Order) session.getAttribute("MY_CART_ITEMS");
		if (orderInCart != null && orderInCart.getOrderItems().size() > 0) {
			orderInCart.setTotalAmount(totalAmount);
			orderService.save(orderInCart);
			session.removeAttribute("MY_CART_ITEMS");
		}
		return "redirect:../orders/myorders";
	}

	@GetMapping("/updateStatus")
	public String updateStatus(@RequestParam("id") int orderId, @RequestParam("status") String status) {
		Order order = orderService.findOne(orderId);
		if ("CANCELLED".equals(status)) {
			order.setCancelledDate(LocalDate.now());
		}

		order.setStatus(status);
		orderService.save(order);
		return "redirect:../orders/myorders";
	}

	@GetMapping("/cart")
	public String cart() {
		return "order/placeOrder";
	}
	
	@GetMapping("/checkout")
	public String checkout(){
		return "order/checkout";
	}
}
