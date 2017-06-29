<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Books</title>
<link rel="stylesheet" href="listCart/css/style.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
</head>

<body>
	<%@ include file="../../layout/header.jsp"%>
	<div id="wrapper">
		<div class="cart-icon-top"></div>

		<div class="cart-icon-bottom"></div>

		<div id="checkout">CHECKOUT</div>

		<div id="sidebar">
			<h3>CART</h3>
			<div id="cart">
				<span class="empty">No items in cart.</span>
			</div>

			<h3>CATEGORIES</h3>
			<div class="checklist categories">
				<ul>
					<li><a href="#"><span></span>New Arivals</a></li>
					<li><a href="#"><span></span>Best Sellers</a></li>
					<li><a href="#"><span></span>Comics</a></li>
					<li><a href="#"><span></span>Engineering</a></li>
					<li><a href="#"><span></span>Action</a></li>
					<li><a href="#"><span></span>Comedy</a></li>
					<li><a href="#"><span></span>Fantasy</a></li>
					<li><a href="#"><span></span>Horror</a></li>
					<li><a href="#"><span></span>Mystery</a></li>
				</ul>
			</div>
		</div>
	</div>
	
		<div id="grid">
			<div class="product">
				<div class="info-large">
					<h4>${book.title}</h4>
					<div class="sku">
						ISBN: <strong>${book.isbn}</strong>
					</div>

					<div class="price-big">${book.price}</div>

					<button class="add-cart-large">Add To Cart</button>

				</div>
				<c:forEach items="${book}" var="book">
				<div class="make3D">
					<div class="product-front">
						<div class="shadow"></div>
						
						<img src="listCart/images/harry-potter.jpg" alt="" />
						<div class="image_overlay"></div>
						<div class="add_to_cart">Add to cart</div>
						<div class="view_gallery">View Book</div>
						<div class="stats">
							<div class="stats-container">
								<span class="product_price">${book.price}</span> <span
									class="product_name">${book.title}</span>
								<p>${book.author}</p>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
				<div class="product-back">
					<div class="shadow"></div>
					<div class="carousel">
						<ul class="carousel-container">
							<li><img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1.jpg"
								alt="" /></li>
							<li><img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2.jpg"
								alt="" /></li>
							<li><img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/3.jpg"
								alt="" /></li>
						</ul>
						<div class="arrows-perspective">
							<div class="carouselPrev">
								<div class="y"></div>
								<div class="x"></div>
							</div>
							<div class="carouselNext">
								<div class="y"></div>
								<div class="x"></div>
							</div>
						</div>
					</div>
					<div class="flip-back">
						<div class="cy"></div>
						<div class="cx"></div>
					</div>
				</div>
			</div>

			<div class="product">
				<div class="info-large">
					<h4>${book.title}</h4>
					<div class="sku">
						ISBN: <strong>"${book.isbn}"</strong>
					</div>

					<div class="price-big">${book.price}</div>

					<button class="add-cart-large">Add To Cart</button>

				</div>
				<div class="make3D">
					<div class="product-front">
						<div class="shadow"></div>
						<img src="listCart/images/harry-potter.jpg" alt="" />
						<div class="image_overlay"></div>
						<div class="add_to_cart">Add to cart</div>
						<div class="view_gallery">View Book</div>
						<div class="stats">
							<div class="stats-container">
								<span class="product_price">${book.price}</span> <span
									class="product_name">${book.title}</span>
								<p>${book.author}</p>
							</div>
						</div>
					</div>
				</div>
				<div class="product-back">
					<div class="shadow"></div>
					<div class="carousel">
						<ul class="carousel-container">
							<li><img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1.jpg"
								alt="" /></li>
							<li><img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2.jpg"
								alt="" /></li>
							<li><img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/3.jpg"
								alt="" /></li>
						</ul>
						<div class="arrows-perspective">
							<div class="carouselPrev">
								<div class="y"></div>
								<div class="x"></div>
							</div>
							<div class="carouselNext">
								<div class="y"></div>
								<div class="x"></div>
							</div>
						</div>
					</div>
					<div class="flip-back">
						<div class="cy"></div>
						<div class="cx"></div>
					</div>
				</div>
			</div>
		</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="menu.js"></script>

	<script src="login/js/index.js"></script>

	<%@ include file="../../layout/footer.jsp"%>
</body>
</html>
