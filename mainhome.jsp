<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Product"%>
<%@ page import = "dao.ProductDao2" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="mainhome.css">
</head>
<body>
	<div class="menu-btn">
		<i class="fas fa-bars fa-2x"></i>
 	</div>
	<%@ include file="header.jsp" %>

  <!-- Showcase -->
      <div class="case_showcase">
          <div class="showcase">
              <div>
                  <img src="https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt37927f7aeba81182/61ef25b21e207a3729b8f07c/LOL_PROMOART_12.jpg" alt="">
              </div>
              <div>
                  <img src="https://blog.kakaocdn.net/dn/msGhO/btqEliWJ822/QRSZggctInX6aPISCgaJR0/img.jpg" alt="">
              </div>
              <div>
                  <img src="https://blog.kakaocdn.net/dn/cNArNb/btqCMnj3XRX/iouyDk3h912eBHgbTDeBz1/img.jpg" alt="">
              </div>
          </div>
      </div>

	<div class="container">
  	 
        <!-- Home cards 1 -->
        <section class="home-cards">
        <div>
            <img src="http://image.auction.co.kr/itemimage/1c/f9/6c/1cf96c23b6.jpg" alt="">
            <h3>뚜러뻥</h3>
            <p>
				공기의 압력차를 이용해서 막혀버린 배수관을 뚫는 도구이다. 
				변을 많이 눴거나 휴지를 쑤셔넣어 변기가 막혔을 때 도와주는 고마운 친구. 
				배수관을 뚫는 도구이기 때문에 쓸 수 있는 범위는 넓지만 대부분의 사람들이 가장 먼저 떠올리는 건 역시 변기. 
				평소에는 쓸 일이 그다지 많지 않아 쓸모를 못 느끼지만 막상 문제가 터졌을 때 없으면 참 난감한 도구.
            </p>
            <a href="#">상품 더 알아보기<i class="fas fa-chevron-right"></i></a>
        </div>
        <div>
            <img src="https://image.fmkorea.com/files/attach/new2/20221010/14339012/2857140960/5094412359/1e9f44e6ffdbfc3bea797c5d3c9c53d4.jpg" alt="" />
            <h3>몰락한 왕의 검</h3>
            <p>
				기본 공격시 상대의 현재 체력의 8%에 해당하는 추가 물리피해를 줍니다.(근거리챔피언은 12%의 효과)
				적에게 100의 마법피해를 입히고 이동 속도의 25%를 3초간 훔칩니다.(쿨 타임 90초)
            </p>
            <a href="#">상품 더 알아보기<i class="fas fa-chevron-right"></i></a>
        </div>
        <div>
            <img src="https://images.ctfassets.net/8cd2csgvqd3m/7jE3WBXZnUTNnuLtmg5d2i/f7255e73788cb8b0e69a988225122242/h9-argilla-bright-hero-1000x1000.png?q=90&fm=webp&w=720&h=720&fit=fill" alt="" />
            <h3>헤드셋</h3>
            <p>
            자신이 살기 위해 적을 죽여야만 하는
			처절한 싸움의 공간 FPS 게임.
			시각, 촉각, 청각 등 모든 감각이
			민감하게 작용해야만 살아남을 수 있습니다.
			그중 청각을 더욱 업그레이드시켜줄
			가상 7.1채널 사운드 엔진의 게이밍 헤드셋을 만나보겠습니다.
            </p>
            <a href="#">상품 더 알아보기<i class="fas fa-chevron-right"></i></a>
        </div>
        <div>
            <img src="https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/bltd2331d283b5f3086/5fa1f004cb9eba781f087dac/3157_Mage_T3_ZhonyasHourglass.png?disposition=inline" alt="" />
            <h3>존야의 모래시계</h3>
            <p>
				2.5초 동안 무적 및 대상으로 지정할 수 없는 상태가 되지만, 그동안 아무런 행동도 할 수 없습니다.(쿨 타임 120초)
            </p>
            <a href="#">상품 더 알아보기 <i class="fas fa-chevron-right"></i></a>
        </div>.
        </section>
	</div><br><br><br>
      

      <!-- Footer -->
      <%@ include file="footer.jsp" %>

	
</body>
</html>