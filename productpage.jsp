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
									/<h2>
										<a href="">전체 제품</a>
									</h2>/
									<h2>
										<a href="">인기 제품</a>
									</h2>/
									<h2>
										<a href="">할인 제품</a>
									</h2>/
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
								<!-- 자바문들어가기전 원래 상품코드 -->
							<!-- 	<div id="product-1" class="single-product">
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