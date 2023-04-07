<%@page import="javax.imageio.metadata.IIOMetadataFormatImpl"%>
<%@page import="java.awt.dnd.DropTargetEvent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.Product"%>
<%@ page import="dao.ProductDao2"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="ko">

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>로그인 또는 회원가입</title>
<link href="./css/sharestyle.css" rel="stylesheet" type="text/css">
<link href="loginSignup2.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!-- <script src="script.js"></script> -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="  crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<style>
	html{
		font-size:1rem;
	}
</style>
</head>

<body>
	<%@ include file="header.jsp" %>
	<div class="main">
		<div class="veen">
			<div>
				<p>로그인 성공</p>
				<button type="Button" onclick = "location.href = 'mainhome.jsp'" >처음으로</button>
			</div>
		</div>	
	</div>
	<!-- Footer -->
      <%@ include file="footer.jsp" %>
</body>
</html>