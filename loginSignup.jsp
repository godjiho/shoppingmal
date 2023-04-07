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
<link href="loginSignup.css" rel="stylesheet" type="text/css">

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
			<div class="login-btn splits">
				<p>이미 계정이 있으십니까?</p>
				<button class="active bt-c">Login</button>
			</div>
			<div class="rgstr-btn splits">
				<p>계정이 없으십니까?</p>
				<button class="bt-c">회원가입</button>
			</div>
			<div class="wrapper">
				<form id="login" action="loginSignup.jsp" action="loginSignup3.jsp" tabindex="500">
					<h3>로그인</h3>
					<div class="mail">
						<input type="text" name="loginid">
						<label>아이디</label>
					</div>
					<div class="passwd">
						<input type="password" name="loginpw">
						<label>비밀번호</label>
					</div>
					<div>
						<button class="dark">로그인</button>
					</div>
				</form>
				<form id="register" action="loginSignup.jsp" tabindex="502">
					<h3>회원가입</h3>
					<div class="name">
						<input type="text" name="username">
						<label>이름</label>
					</div>
					<div class="mail">
						<input type="email" name="useremail">
						<label>이메일</label>
					</div>
					<div class="uid">
						<input type="text" name="userid">
						<label>아이디</label>
					</div>
					<div class="passwd">
						<input type="password" name="userpw">
						<label>비밀번호</label>
					</div>
					<div class="submit">
						<button class="dark">회원가입</button>
					</div>
				</form>
			</div>
		</div>	
	</div>
	<!-- Footer -->
      <%@ include file="footer.jsp" %>

	<script>
	$(document).ready(function(){
		$(".veen .rgstr-btn button").click(function(){
			$('.veen .wrapper').addClass('move');
			$('.body').css('background','#e0b722');
			$(".veen .login-btn button").removeClass('active');
			$(this).addClass('active');
		});
		$(".veen .login-btn button").click(function(){
			$('.veen .wrapper').removeClass('move');
			$('.body').css('background','#ff4931');
			$(".veen .rgstr-btn button").removeClass('active');
			$(this).addClass('active');
		});
	});
	</script>
		
	<%
		int pd = 0; int usernum = 999999;
		String name=null;String email=null;
		String id=null;String pw=null;
		String loginid=null;String loginpw=null;
		name = request.getParameter("username");
		email = request.getParameter("useremail");	
		id = request.getParameter("userid");
		pw = request.getParameter("userpw");
		loginid = request.getParameter("loginid");
		loginpw = request.getParameter("loginpw");
		
		
		if (id != null || email != null){
			System.out.println("입력된 회원가입 이메일값 : "+ email);
			System.out.println("입력된 회원가입 아이디값 : "+ id);
			pd = ProductDao2.getInstance().selectid(email, id);
		}
		
		if (loginid != null || loginpw != null){
			System.out.println("입력된 로그인 아이디값 : "+ loginid);
			System.out.println("입력된 로그인 비밀번호값 : "+ loginpw);
			Product productid = ProductDao2.getInstance().selectlogin(usernum,loginid,loginpw);
			usernum=productid.getUsernum();
			System.out.println("db 유저 넘버값 : " + productid.getUsernum());
			if (usernum == 0) {
	%>
			<script>
				alert("아이디와 비밀번호를 확인해주세요");
			</script>
	<%
			} else if (usernum == 999999){		
			} else {
				session.removeAttribute("user_num");
				session.invalidate();
			/* 	session.setAttribute("user_num", productid.getUsernum());
				session.setMaxInactiveInterval(600); */
				System.out.println("로그인 성공");
				response.sendRedirect("loginSignup3.jsp");
			}
		}
		
		if (pd == 1) {
	 %>
		<script>
		 	alert("중복된 아이디입니다.");
		</script>
	<%
		} else if (pd == 2) {		
	%>
		<script>
			alert("중복된 이메일입니다.");
		</script>
	<%
		} else if (pd == 3) {	
	%>
		<script>
			alert("아이디와 이메일 둘다 중복되었습니다.")
		</script>
	<%
		} else if (pd == 2) {	
	%>
		<script>
			alert("중복된 아이디입니다.");
		</script>
	<%
		} 
		if (pd == 4) {
			Product product = new Product(name,email,id,pw);
			boolean fact = ProductDao2.getInstance().insertUser(product);
			if (fact) {
				System.out.println("db입력성공");
				response.sendRedirect("loginSignup2.jsp");
			}//경로파일로 화면 넘기기 
			else {
				System.out.println("db입력실패");
			}
		}
	%>
		
</body>
</html>