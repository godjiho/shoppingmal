<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Product"%>
<%@ page import = "dao.ProductDao2" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link rel="stylesheet" href="./css/sharestyle.css">	
	<link rel="stylesheet" href="mainhome.css">
	<script type="text/javascript">
        $(document).ready(function(){
			$('.showcase').slick({
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

</head>
<body>
	<% session.getAttribute("user_num"); %>
	<div class="menu-btn">
		<i class="fas fa-bars fa-2x"></i>
 	</div>
	<%@ include file="header.jsp" %>

  <!-- Showcase -->
      <div class="case_showcase">
          <header2 class="showcase">
              <div>
                  <img src="img/main1.jpg" alt="">
              </div>
              <div>
                  <img src="img/main2.jpg" alt="">
              </div>
              <div>
                  <img src="img/main3.jpg" alt="">
              </div>
          </header2>
      </div>

	<div class="container">
  	 
        <!-- Home cards 1 -->
        <section class="home-cards">
        <div>
            <img src="https://c4.wallpaperflare.com/wallpaper/23/815/749/movies-1980x1080-hd-amazing-wallpaper-preview.jpg" alt="">
            <h3>스파이더맨 슈퍼 슈트</h3>
            <p>
				리자드맨의 가죽으로 만들어 질기고 튼튼하며 뛰어난 내구성을 자랑하는 제품으로 저희 회사만의 비밀 가공방식을 
				채택하여 보다 편리하고 간편한 움직임을 선사해줍니다. 평소 스파이더맨의 팬이었던 분이라면 한번쯤 사볼만한 제품!..
            </p>
            <a href="#">상품 더 알아보기<i class="fas fa-chevron-right"></i></a>
        </div>
        <div>
            <img src="https://w.wallha.com/ws/5/oNDAuEwi.jpg" alt="" />
            <h3>팽귄-47</h3>
            <p>
				평소 귀여운 팽귄을 좋아하셨던 당신!. 반전매력에 빠져볼 시간입니다. 귀여움 뒤에 감춰뒀던 
				카리스마 있는 팽귄을 만나보세요. 총과 팽귄이 한번에 오는건 두번은 없을 기회입니다.<br>(사실 총기밀매라 팽귄은 연막용임)
            </p>
            <a href="#">상품 더 알아보기<i class="fas fa-chevron-right"></i></a>
        </div>
        <div>
            <img src="https://t1.daumcdn.net/cfile/tistory/2354BE4956E07AEF14" alt="" />
            <h3> 모자달린 떡볶이 코트</h3>
            <p>
             갸냘픈 어깨선을 만들어줘서 챙겨주고싶고 안고싶게 만들어주는 전설의 코트.
			 김태희도 입었다는 코트를 어렵게 직구해 왔습니다. 입으면 5배 이뻐보이는 
			 효과가 있다는 걸 보증하는 사진.(그냥 김태희가 이쁜건 비밀)
            </p>
            <a href="#">상품 더 알아보기<i class="fas fa-chevron-right"></i></a>
        </div>
        <div>
            <img src="https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/1XQA/image/YWXdhqHOcowAoa8EGlOac28PTTg.jpg" alt="" />
            <h3>토르의 망치가 아닌 망토</h3>
            <p>
				샐러맨더의 가죽으로 만들어 불의 내성이 높고 자사의 비밀 배합을 통해 망토가
				파도처럼 출렁거리는 드라마틱한 효과를 추가하여 망토를 매고 달리거나 뛰어내릴 때
				주변 시선을 한번에 받을 수 있는 관심받기 최강의 망토. 사람들의 관심을 즐기는 당신! 클릭해보시죠..후후
            </p>
            <a href="#">상품 더 알아보기 <i class="fas fa-chevron-right"></i></a>
        </div>.
        </section>
	</div><br><br><br>
      

      <!-- Footer -->
      <%@ include file="footer.jsp" %>

	
</body>
</html>