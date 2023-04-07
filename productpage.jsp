<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.Product"%>
<%@ page import="dao.ProductDao2"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="test2.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./css/sharestyle.css" type="text/css">
<link href="productpage.css" rel="stylesheet" type="text/css">
<title>Document</title>
<%
	String UserNumber = request.getParameter("id");
	System.out.println("받아오는 ID값 : "+UserNumber);
%>
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp" %>
		<section class="section-products">
			<div class="contsection class="section-products">
				<div class="container">
					<div class="test">
						<div class="col-md-8 col-lg-6">
							<div class="header">
								<h3>제품 목록</h3>
								<div class="header_category">
									/
									<h2>
										<a href="">전체 제품</a>
									</h2>
									/
									<h2>
										<a href="">인기 제품</a>
									</h2>
									/
									<h2>
										<a href="">할인 제품</a>
									</h2>
									/
								</div>
							</div>
						</div>
					</div>
					<div class="container2">
						<hr>
						<div class="row">
							<!-- Single Product -->
							<div class="col-md-6 col-lg-4 col-xl-3" style="position: relative; display: grid; grid-template-columns: 2fr 2fr 2fr 2fr;">
						 	<%
						 	ArrayList<Product> list = ProductDao2.getInstance().selectlist();
						 	
						 	for (int i=0; i<list.size(); i++){
						 		/* out.println("<div class=\"col-md-6 col-lg-4 col-xl-3\">"); */
									out.println("<div id=\"product-img\" class=\"single-product\">");
									out.println("<div class=\"part-1\" style=\"background: url("+list.get(i).getImg1()+")no-repeat center; background-size: cover; transition: all 0.3s;\">");
										out.println("<ul>");
											out.println("<li><a href=\"#\"><i class=\"fas fa-shopping-cart\"></i></a></li>");
											out.println("<li><a href=\"#\"><i class=\"fas fa-heart\"></i></a></li>");
											out.println("<li><a href=\"#\"><i class=\"fas fa-plus\"></i></a></li>");
											out.println("<li><a href=\"#\"><i class=\"fas fa-expand\"></i></a></li>");
										out.println("</ul>");
									out.println("</div>");
									out.println("<div class=\"part-2\"");
										out.println("onclick=\"location.href=\'./productinfo.jsp?id="+i+"\'\">");
											out.println("<h3 class=\"product-title\">"+list.get(i).getpdinfoname()+"</h3>");
											out.println("<h4 class=\"product-price\">"+list.get(i).getprice()+"원</h4>");
									out.println("</div>");
								out.println("</div>");
								}%>
								<div id="product-1" class="single-product">
									<div class="part-1">
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=0'">
										<a href="./productinfo.jsp?id=2">
											<h3 class="product-title">죽음의 데스사이드</h3>
											<h4 class="product-price">13,760,000원</h4>
										</a>
									</div>
								</div>
							</div>
							<!-- Single Product -->
							<!-- <div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-img" class="single-product">
									<div class="part-1">
										<span class="discount">15% off</span>
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=1'">
										<h3 class="product-title">아이폰 28 프로 울트라</h3>
										<h4 class="product-old-price">460만원</h4>
										<h4 class="product-price">391만원</h4>
									</div>
								</div>
							</div>
							Single Product
							<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-3" class="single-product">
									<div class="part-1">
										<span class="crossbordershopping">해외 직구</span>
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=2'">
										<h3 class="product-title">몰락한 왕의 검</h3>
										<h4 class="product-price">3,300골드</h4>
									</div>
								</div>
							</div>
							Single Product
							<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-4" class="single-product">
									<div class="part-1">
										<span class="new">new</span>
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=3'">
										<h3 class="product-title">싹다 뚜러뻥</h3>
										<h4 class="product-price">16,600원</h4>
									</div>
								</div>
							</div>
							Single Product
							<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-5" class="single-product">
									<div class="part-1">
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=4'">
										<h3 class="product-title">+99강화 몽둥이</h3>
										<h4 class="product-price">9,999,900원</h4>
									</div>
								</div>
							</div>
							Single Product
							<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-6" class="single-product">
									<div class="part-1">
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=5'">
										<h3 class="product-title">윤회안</h3>
										<h4 class="product-price">495,000,000원</h4>
									</div>
								</div>
							</div>
							Single Product
							<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-7" class="single-product">
									<div class="part-1">
										<span class="discount">15% off</span>
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									<div class="part-2"
										onclick="location.href='./productinfo.jsp?id=6'">
										<h3 class="product-title pro">타이슨 청소기</h3>
										<h4 class="product-old-price">1,057,647원</h4>
										<h4 class="product-price">899,000원</h4>
									</div>
								</div>
							</div>
							Single Product
							<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-8" class="single-product">
									<div class="part-1">
										<span class="new">new</span>
										<ul>
											<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
											<li><a href="#"><i class="fas fa-heart"></i></a></li>
											<li><a href="#"><i class="fas fa-plus"></i></a></li>
											<li><a href="#"><i class="fas fa-expand"></i></a></li>
										</ul>
									</div>
									
										<div class="part-2"
											onclick="location.href='./productinfo.jsp?id=7'">
											<h3 class="product-title">헤드 셋</h3>
											<h4 class="product-price">789,000￦</h4>
										</div>
									
								</div>
							</div> -->
							</div>
						</div>
					</div>
				</div>
		</section>
	</div>
	<!-- Footer -->
      <%@ include file="footer.jsp" %>

</body>
</html>