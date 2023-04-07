<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog였던것</title>
	
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<script type="text/javascript">
		$(document).ready(function(){
			$('.slider').slick({
			      infinite : true,     // 무한 반복 옵션     
			      slidesToShow : 1,    // 한 화면에 보여질 컨텐츠 개수
			      slidesToScroll : 1,  // 스크롤 한번에 움직일 컨텐츠 개수
			      speed : 500,         // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			      arrows : true,       // 옆으로 이동하는 화살표 표시 여부
			      autoplay : true,     // 자동 스크롤 사용 여부
			      autoplaySpeed : 2000,// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
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
        *{margin: 0; padding: 0; font-family: 'nanum dahaengce';}
        li{list-style: none;}
        a{text-decoration: none; color: black;}
        a :active{color: black;}
        hr {color: black;}
        body{height: auto;}
        
        header{position: relative; width: 100%; height: 280px; font-size: 50px; font-weight: bold;}
      	
        #header_logoimg{position: absolute; background-image: url("img/headlogo.png"); 
        width: 800px; height: 240px;  background-size: cover; left: 7%;}
        #main_menu {position: absolute; right: 4%; bottom: 0px; }
        #main_menu div{display: inline-block;}
    
        #menucheckbt{display: none;}
        #main_menu img{width: 50px; height: 50px; position: absolute; bottom: 0%;}
    
        #main_menu img:hover{cursor: pointer;}
        #main_menu img:active{cursor: pointer;}
        
   
        #profile_img{background-image: url("img/profile.png"); width: 120px; height: 120px; background-size: cover;}
    
        #profile{position: absolute; top: 25px; right: 50px;}
        #profile div {text-align: center;}
        
        
        section{margin-top:600px; position:relative; font-size: 30px; font-weight:bold; height: 1500px;}
        #diary {position:absolute; width: 81%; height: auto; background-image: url("img/background.gif"); 
        margin: 50px 0px; padding: 2%; border: 3px solid pink; left: 8%;}
        #diary div{display:inline-block; border: 3px solid pink; background-color: white; color: black; 
        width: 300px; height: 300px; text-align: center; margin: 0px 36px; margin-bottom: 80px;}
        #diary div h2{margin-bottom: 7px;}
        
    </style>
    <style>
    	.footer{margin-left: 100px; margin-top: 50px;}
    </style>
    
    <style>
    	header .slider{text-align: center; margin-top: 300px;}
    	.slider{position: relative;}
    	.slider button{position: absolute; top:50%; z-index: 10; transform: translateY(-50%);
    		width: 71px; height: 71px; border-radius: 100%; background: rgba(255,255,255,0.5); border: 0px;}
    	.slider button:before{font-family: "xeicon"; font-size: 45px;}
    	.slider button.slick-prev{left: 50px; font-size: 0px; color: transeparent;}
    	.slider button.slick-prev:before{content: "\e906"; font-family: "xeicon"}
    	.slider button.slick-next{right: 50px; font-size: 0px; color: transeparent;}
    	.slider button.slick-next:before{content: "\e907"; font-family: "xeicon"}
    </style>
</head>
<body>
    <header>
        <a href=""><div id="header_logoimg"></div></a><hr>
        <div id="main_menu"><form action="productjsp" method=></form>
            <a href=""><div>인기상품</div></a>&nbsp;
            <a href=""><div>메인상품</div></a>&nbsp;
            <a href=""><div>서브상품</div></a>&nbsp;
            <a href=""><div>고객센터</div></a>&nbsp;
            <label>
            	<input type="checkbox" name="menuonoff" id="menucheckbt">
            	<img src="img/menu.png">
            </label>
        </div>
        <div id="profile">
            <a href=""><div id="profile_img"></div></a>
            <div>사용자</div>
        </div>
        <div class="slider">
		    <div><img src="img\iu22.jpg"></div>
		    <div><img src="img\iu22.jpg"></div>
		    <div><img src="img\iu22.jpg"></div>
  		</div>
       
    </header>
    <section>
        <div id="diary">
            <a href=""><div>
                <h2>타이슨 청소기</h2><hr>
                <img src="img/vacuum .png">
            </div></a>
            <a href=""><div>
                <h2>뚜러뻥</h2><hr>
                <img src="img/plunger.png">
            </div></a>
            <a href=""><div>
                <h2>윤회안</h2><hr>
                <img src="img/rinnegan.png">
            </div></a>
            <a href=""><div>
                <h2>헤드 셋</h2><hr>
                <img src="img/headset.png">
            </div></a>
               <a href=""><div>
                <h2>i-아이폰24</h2><hr>
                <img src="img/iiphon24.png">
            </div></a>
            <a href=""><div>
                <h2>99강화나무몽둥이</h2><hr>
                <img src="img/ReinforcedWoodenStick.png">
            </div></a>
            <a href=""><div>
                <h2>X4 자</h2><hr>
                <img src="img/lion.png">
            </div></a>
            <a href=""><div>
                <h2>몰왕검</h2><hr>
                <img src="img/kingsword.png">
            </div></a>
            <a href=""><div>
                <h2>도라애몽주머니</h2><hr>
                <img src="img/doraemon.png">
            </div></a>
             <a href=""><div>
                <h2>죽음의데스사이드</h2><hr>
                <img src="img/dethofdeth.png">
            </div></a>
             <a href=""><div>
                <h2>방치</h2><hr>
                <img src="img/">
            </div></a>
             <a href=""><div>
                <h2>방치</h2><hr>
                <img src="img/">
            </div></a>
        </div>
    </section>
    <div class="footer">
    	<jsp:include page="footer.jsp" flush="false"></jsp:include>
    </div>
    
    
			 
	
</body>
</html>