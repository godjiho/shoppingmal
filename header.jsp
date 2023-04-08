<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="header.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<script>	
        $(document).ready(function(){
			$('.showcase').slick({
				  slide: 'div',
			      infinite : true,     // 무한 반복 옵션     
			      slidesToShow : 1,    // 한 화면에 보여질 컨텐츠 개수
			      slidesToScroll : 1,  // 스크롤 한번에 움직일 컨텐츠 개수
			      speed : 500,         // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			      arrows : true,       // 옆으로 이동하는 화살표 표시 여부
			      autoplay : true,     // 자동 스크롤 사용 여부
			      autoplaySpeed : 10000,// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			      pauseOnHover : true, // 슬라이드 이동 시 마우스 호버하면 슬라이더 멈추게 설정
			      vertical : false,    // 세로 방향 슬라이드 옵션
			      prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
			      nextArrow : "<button type='button' class='slick-next'>Next</button>",
			      draggable : true,    //드래그 가능 여부 
			      responsive: [ 	   // 반응형 웹 구현 옵션
			        {  
			          breakpoint: 960, //화면 사이즈 960px
			          settings: {
			          slidesToShow: 4
			          } 
			        },{
			          breakpoint: 768, //화면 사이즈 768px
			          settings: {    
			          slidesToShow: 5
			          }
			        }
			      ]
			    });
			})
	</script>
	<style>
		.showcase{position: relative;}
    	.showcase button{position: absolute; top:50%; z-index: 10; transform: translateY(-50%);
    		width: 71px; height: 71px; border-radius: 100%; background: rgba(255,255,255,0.5); border: 0px;}
    	.showcase button:before{font-family: "xeicon"; font-size: 45px;}
    	.showcase button.slick-prev{left: 50px; font-size: 0px; color: transeparent;}
    	.showcase button.slick-prev:before{content: "\e906"; font-family: "xeicon";}
    	.showcase button.slick-next{right: 50px; font-size: 0px; color: transeparent;}
    	.showcase button.slick-next:before{content: "\e907"; font-family: "xeicon";}
	</style>

<%
	String user_code= null;
	
	if (String.valueOf(session.getAttribute(("user_num")))==null){
		user_code = String.valueOf(session.getAttribute("user_num"));
	} else {
		session.removeAttribute("user_num");
		user_code = null;
	}
	session.setMaxInactiveInterval(600);
	System.out.println("유저정보: "+user_code);
%>
</head>
<body>
<header>
		<div>
			<div class="header-box">
				<section class="headerlogowidth">
					<img class="headerlogo" src="img/headlogo3.png" onClick="window.location.reload()" style="cursor: pointer;">
				</section>
 				<%
				out.println("<section class=\"anav\">");
					out.println("<a class= \"headmenu\" type=\"Submit\" href=\"mainhome.jsp\">홈</a>");
					out.println("<a class= \"headmenu\" type=\"Submit\" href=\"productpage.jsp\">상품 정보</a>"); 
					out.println("<a class= \"headmenu\" type=\"Submit\" href=\"productAdd.jsp\">상품 등록</a>");
					out.println("<a class= \"headmenu\" type=\"Submit\" href=\"shoppingCart.jsp\">장바구니</a>");
					if (user_code==null){
						out.println("<a class= \"headmenu\" href=\"loginSignup.jsp\">로그인</a>");
						System.out.println("유저정보2 : "+user_code);
					} else {
						out.println("<a id=\"clean_session\" class= \"headmenu\" href=\"#\">로그아웃</a>");
						System.out.println("유저정보2 : "+user_code);
					}
				out.println("</section>");
				%> 
				
				<!-- <section class="anav">
					<a class= "headmenu" type="Submit" href="mainhome.jsp">홈</a>
					<a class= "headmenu" type="Submit" href="productpage.jsp">상품 정보</a> 
					<a class= "headmenu" type="Submit" href="productAdd.jsp">상품 등록</a>
					<a class= "headmenu" type="Submit" href="shoppingCart.jsp">장바구니</a>
					<a class= "headmenu" href="loginSignup.jsp">로그인</a>
				</section> -->
				
				<section class="headerform">
					<input type="search"> <img class="inputicon"
						src="https://i.ibb.co/bBDx9Ht/image.png" id="input_img">
				</section>
			</div>
			<div class="mobile-nav">
			<!-- <div class="login_name">님 반갑습니다</div> -->
				<div class="b-nav">
					<ul class="inlinenav">
						<li><a class="b-link b-link--active" href="#">JOIN</a></li>
						<li><a class="b-link" href="loginSignup.jsp">LOGIN</a></li>
						<li><a class="b-link" href="#">MY PAGE</a></li>
						<li><a class="b-link" href="#">QNA</a></li>
						<li><a class="b-link" href="#">NEWS</a></li>
					</ul>
					<img class="hamnavsolid" src="https://i.ibb.co/ZdwHG7R/1.png">
					<ul class="hamnavbig">
						<li><a class="b-link b-link--active" href="#"></a></li>
						<li><a class="b-link" href="#">인기상품</a></li>
						<li><a class="b-link" href="#">할인상품</a></li>
						<li><a class="b-link" href="#">모든상품</a></li>
						<li><a class="b-link" href="#">추천상품</a></li>
					</ul>
				</div>
				<!-- Burger-Icon -->
				<div class="b-container">
					<div class="b-menu">
						<div class="b-bun b-bun--top"></div>
						<div class="b-bun b-bun--mid"></div>
						<div class="b-bun b-bun--bottom"></div>
					</div>
					<!-- Burger-Brand -->
					<a href="#" class="b-brand"></a>
				</div>
			</div>
		</div>
		<hr>
	</header>
	<script>
	/*아코디언메뉴*/
	var acodian = {
	
	  click: function(target) {
		var _self = this,
		  $target = $(target);
		$target.on('click', function() {
		  var $this = $(this);
		  if ($this.next('dd').css('display') == 'none') {
			$('dd').slideUp();
			_self.onremove($target);
	
			$this.addClass('on');
			$this.next().slideDown();
		  } else {
			$('dd').slideUp();
			_self.onremove($target);
	
		  }
		});
	  },
	  onremove: function($target) {
		$target.removeClass('on');
	  }
	
	};
	acodian.click('dt');
	/*아코디언메뉴*/
	</script>
	
	<script>
	/*햄버거메뉴*/
	/********************** Mobile Menu ***********************/
	'use strict';
	
	(function() {
	  var body = document.body;
	  var burgerMenu = document.getElementsByClassName('b-menu')[0];
	  var burgerContain = document.getElementsByClassName('b-container')[0];
	  var burgerNav = document.getElementsByClassName('b-nav')[0];
	
	  burgerMenu.addEventListener('click', function toggleClasses() {
		[body, burgerContain, burgerNav].forEach(function (el) {
		  el.classList.toggle('open');
		});
	  }, false);
	})();
	
	
	/********************** Mobile Menu ***********************/
	</script>
	<%-- <script>
		$('#clean_session').click(function(){
			alert("로그아웃되었습니다");
			<% session.invalidate();%>
				
			});
	</script> --%>
	
</body>
</html>