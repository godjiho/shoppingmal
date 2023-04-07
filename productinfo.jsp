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
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>product</title>
<link href="productinfo.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" href="./css/sharestyle.css">

<%
	String ProductNumber = request.getParameter("id");
	int PN = Integer.parseInt(ProductNumber);
	ArrayList<Product> list = ProductDao2.getInstance().selectlist();
	String option = list.get(PN).getoption();
	String optionlist[] = list.get(PN).getoption2().split(",");
	if (list.get(PN).getoption2() != null){
		String option2list[] = list.get(PN).getoption2().split(";");
	}
	String imagelist[] = list.get(PN).getpdimg().split("ㆍ");
	System.out.println(PN);
	System.out.println(option);
	System.out.println(optionlist[0]);
	System.out.println(imagelist[0]);

%>
 

</head>
<style>
body {
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}
</style>
<body>
	<%@ include file="header.jsp" %>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>
	<hr>

	<div class="full">

		<section class="proslide">
			<div class="top-section">
				<img id="image-container" src="<%=imagelist[0]%>" alt="">
			</div>

			<div class="nav">
			<% for(int i=0; i<imagelist.length; i++){
				out.println("<img onclick=\"change_img(this)\" src=\""+imagelist[i]+"\">");
			}%>
			</div>
		</section>

		<div class="contxt">
			<div class="col-sm-6">
				<h2><%=list.get(PN).getpdinfoname()%></h2>
				<h4><%=list.get(PN).getsub_name()%></h4>

				<span class="big"><b><%=list.get(PN).getprice()%>₩ </b> </span>

				<p>
				<div class="in">
					<div class="be">
						<h4>혜택안내</h4>
						<h5>
							<span class="slim">카드혜택</span><br>무이자할부
						</h5>
					</div>
					<div class="goods">
						<h4>상품안내</h4>
						<h5>
							<span class="slim2">카테고리</span><br><%=list.get(PN).getcategory()%><br>
							<span class="slim2">제품코드</span><br><%=list.get(PN).getpdcode()%></h5>
					</div>
				</div>


				<div class="wrapper">
					<div class="select_wrap">
						<ul class="default_option">
							<li>
								<div class="option pizza">
									<div class="select-icon"></div>
									<p><%=option%></p>
								</div>
							</li>
						</ul>
						<ul class="select_ul">
							<%
								for(int i = 0; i < optionlist.length; i++){
									out.println("<li><div class=\"option pizzas\"><p>"+optionlist[i]+"</p></div></li>");
									/* out.println("<li><div class=\"option pizzas\"><div class=\"select-icon\"></div><p>"+optionlist[i]+"</p></div></li>"); */		
								}
							%>
							
						
						</ul>
					</div>

					<button class="bag">Shopping bag</button>
					<button class="buy">buy now</button>

					<img class="banner" src="<%list.get(PN).getpdimg();%>">
				</div>
				<!-- /col-sm-6 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	</div>
	<article class="content">
		<div>
			<dl>
				<dt>
					<span></span>상품정보 <img class="plusbnt"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTpDh8_L0pTXP8dpsb6AJhBCWBjIRpXpPTLCg&usqp=CAU">
				</dt>
				<dd>
					상품코드 : 311613 <br> 배송정보 : 해당 브랜드 제품으로만 50000원 이상 구매시 무료배송 (
					미만시 배송비 3000원 발생 ) <br> 제주도를 포함한 도서/산간지역은 추가배송비 5,000원
				</dd>

				<dt>
					<span></span>브랜드 알림 <img class="plusbnt"
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTpDh8_L0pTXP8dpsb6AJhBCWBjIRpXpPTLCg&usqp=CAU">
				</dt>
				<dd>
					※ 주문확인 후 평일 5일 이내 발송됩니다. (주말 및 공휴일 제외) <br> ※ 주문확인일 → 주문 다음날
					오전 9시 <br> ※ 구매해주신 모든 제품이 합배송 되어 발송될 수 있으나, 일부 상품은 선발송 될 수
					있습니다.
				</dd>
			</dl>

		</div>

	</article>


	<article class="pro">
		<article>
			<div class="con" id="con01">
				<div class="cap">
					<div class="one">
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Modern Design</h3>
							</div>
							<p>
								어디에나 어울리며 유행을 타지 않는 현대적 색상과<br> 다양하게 만나볼 수 있는 네 가지 컬러
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Excellent Sound</h3>
							</div>
							<p>
								True360 전방위 사운드가 이 스피커를 주목하게 만들며, <br> 멀티포인트 기능을 사용 할 수
								있습니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Battery Life</h3>
							</div>
							<p>
								강력한 배터리 지속 시간으로 일반 청취 음량에서 <br> 최대 18시간의 재생 시간을 제공합니다.
							</p>
						</section>

					</div>

					<div class="two">
						<div>
							<h2>Beoplay H9 3rd Gen</h2>
							<h3>배터리 수명이 긴 헤드폰</h3>
						</div>
						<img
							src="https://mobius-luxury.eu/image/catalog/HEADPHONES/H9_3rd/beoplay_h9_3gen_anthracite_02_00.jpg">
					</div>

					<div class="thr">
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Speakerphone</h3>
							</div>
							<p>
								블루투스 5.1과 세 개의 마이크가 온라인 회의 <br> 및 핸즈프리 통화를 위한 연결을 제공합니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Smart ‘Alexa’</h3>
							</div>
							<p>
								Alexa 음성 어시스턴트를 완벽하게 지원합니다. <br> 뉴스와 스케쥴을 확인합니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Refund 30</h3>
							</div>
							<p>
								30일간의 반품 기간은 지났지만 기한 이내에 <br> 파손될 경우 무료 수리를 받을 수 있습니다.
							</p>
						</section>

					</div>
				</div>
			</div>

			<div class="con" id="con02">
				<div class="cap">
					<div class="one">
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Modern Design</h3>
							</div>
							<p>
								어디에나 어울리며 유행을 타지 않는 현대적 색상과<br> 다양하게 만나볼 수 있는 네 가지 컬러
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Excellent Sound</h3>
							</div>
							<p>
								True360 전방위 사운드가 이 스피커를 주목하게 만들며, <br> 멀티포인트 기능을 사용 할 수
								있습니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Battery Life</h3>
							</div>
							<p>
								강력한 배터리 지속 시간으로 일반 청취 음량에서 <br> 최대 18시간의 재생 시간을 제공합니다.
							</p>
						</section>

					</div>

					<div class="two">
						<div>
							<h2>Beoplay H9 3rd Gen</h2>
							<h3>배터리 수명이 긴 헤드폰</h3>
						</div>
						<img
							src="https://mobius-luxury.eu/image/catalog/HEADPHONES/H9i_black/bang_olufsen_beoplay_h9i_black_05_00.jpg">
					</div>

					<div class="thr">
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Speakerphone</h3>
							</div>
							<p>
								블루투스 5.1과 세 개의 마이크가 온라인 회의 <br> 및 핸즈프리 통화를 위한 최상의 연결을
								제공합니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Smart ‘Alexa’</h3>
							</div>
							<p>
								Alexa 음성 어시스턴트를 완벽하게 지원합니다. <br> 뉴스와 스케쥴을 확인합니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Refund 30</h3>
							</div>
							<p>
								30일간의 반품 기간은 지났지만 보증 기한 이내에 <br> 파손될 경우 무료 수리를 받을 수 있습니다.
							</p>
						</section>

					</div>
				</div>
			</div>

			<div class="con" id="con03">
				<div class="cap">
					<div class="one">
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Modern Design</h3>
							</div>
							<p>
								어디에나 어울리며 유행을 타지 않는 현대적 색상과<br> 다양하게 만나볼 수 있는 네 가지 컬러
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Excellent Sound</h3>
							</div>
							<p>
								True360 전방위 사운드가 이 스피커를 주목하게 만들며, <br> 멀티포인트 기능을 사용 할 수
								있습니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Battery Life</h3>
							</div>
							<p>
								강력한 배터리 지속 시간으로 일반 청취 음량에서 <br> 최대 18시간의 재생 시간을 제공합니다.
							</p>
						</section>

					</div>

					<div class="two">
						<div>
							<h2>Beoplay H9 3rd Gen</h2>
							<h3>배터리 수명이 긴 헤드폰</h3>
						</div>
						<img
							src="https://images.ctfassets.net/8cd2csgvqd3m/3eopAX7gQ9WRnVb5winkxB/9ce865f9a2af7528367f75f88e19cb21/h9-anthracite_CMS_CT1.png?q=90&fm=webp&w=720&h=720&fit=fill">
					</div>

					<div class="thr">
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Speakerphone</h3>
							</div>
							<p>
								블루투스 5.1과 세 개의 마이크가 온라인 회의 <br> 및 핸즈프리 통화를 위한 최상의 연결을
								제공합니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Smart ‘Alexa’</h3>
							</div>
							<p>
								Alexa 음성 어시스턴트를 완벽하게 지원합니다. <br> 뉴스와 스케쥴을 확인합니다.
							</p>
						</section>
						<section>
							<div>
								<img
									src="http://www.myiconfinder.com/uploads/iconsets/256-256-52cf9c08925f17af7a0db832063c2594.png">
								<h3>Refund 30</h3>
							</div>
							<p>
								30일간의 반품 기간은 지났지만 보증 기한 이내에 <br> 파손될 경우 무료 수리를 받을 수 있습니다.
							</p>
						</section>


					</div>
				</div>
			</div>
		</article>
		<div class="rec-box" id="rec-box">
			<span class="rec" onclick="currentSlide(1)">●</span> <span
				class="rec" onclick="currentSlide(2)">●</span> <span class="rec"
				onclick="currentSlide(3)">●</span>
		</div>
	</article>



	<article class="addbanner">
		<img src="https://i.postimg.cc/6WfXbq8K/1.jpg">
	</article>




	<article class="addarti2">
		<h2>BEOPLAY 모델 비교하기</h2>
		<span class="yourtxt">당신에게 가장 잘 맞는 BEOPLAY 찾기 > </span>
		<div>

			<section>
				<img
					src="https://images.ctfassets.net/8cd2csgvqd3m/3flz7UwylVJuaVDNhykgnZ/5cea5702bb8361496d5169b2f0d9e8e8/h8i_black_1000x1000_new.png?q=90&fm=webp&w=480&h=480&fit=fill">
				<br> <span class="productarti">Beoplay H9 3rd Gen</span> <br>
				<b>€500</b> <br>

				<div class="addleftxt">
					액티브 노이즈 캔슬링<br> 최대 25시간 재생<br> 재생 시간 확대 <br> *구글
					어시스턴트 연동 <br>
				</div>
			</section>

			<section>
				<img
					src="https://images.ctfassets.net/8cd2csgvqd3m/25LWw4cyQZGJNeUaWGzGHm/442fbf0b26346054cec4bf3463d7528d/h4_black1000x1000l.png?q=90&fm=webp&w=480&h=480&fit=fill">
				<br> <span class="productarti">Beoplay H4 2nd Gen</span> <br>
				<b>€300</b><br>
				<div class="addleftxt">
					내구성 소재<br> 편안한 착용<br> 최대 19시간 재생 <br> 음성 어시스턴트 지원<br>

				</div>
			</section>

			<section>
				<img
					src="https://images.ctfassets.net/8cd2csgvqd3m/vL8xhIqaS8yMbepCoCaZ9/d9462657d7bda0ad8c348028ef0dac26/H95_hero.png?q=90&fm=webp&w=480&h=480&fit=fill">
				<br> <span class="productarti">Beoplay H8i</span> <br> <b>€400</b>
				<br>
				<div class="addleftxt">
					어댑티브 ANC 헤드폰<br> 최대 30시간 재생 <br> 광택 알루미늄 소재 <br> 폴더블
					디자인<br>
				</div>
			</section>

			<section>
				<img
					src="https://images.ctfassets.net/8cd2csgvqd3m/3eopAX7gQ9WRnVb5winkxB/9ce865f9a2af7528367f75f88e19cb21/h9-anthracite_CMS_CT1.png?q=90&fm=webp&w=480&h=480&fit=fill">
				<br> <span class="productarti">Beoplay H8i</span> <br> <b>€400</b>
				<br>
				<div class="addleftxt">
					두 개의 전용 마이크<br> 최대 30시간 재생 <br> 가벼운 무게감 <br> 폴더블 디자인<br>
				</div>
			</section>

		</div>
	</article>

	<footer>
		<div>
			<img class="footerlogo"
				src="https://i.ibb.co/nRYXwgR/pngfind-com-bang-png-2455608.png">

			<section>
				<a class="footernav" href="#">ABOUT US</a><br> <a href="#">회사소개</a><br>
				<a href="#">인재채용</a><br> <a href="#">STORY</a><br> <a
					href="#">LOCATIONS</a>
			</section>

			<section>
				<a class="footernav" href="#">MY ORDER</a><br> <a href="#">주문/배송</a><br>
				<a href="#">상품내역</a><br> <a href="#">주문내역</a><br> <a
					href="#">인증서류발급</a><br>

			</section>

			<section>
				<a class="footernav" href="#">HELP</a><br> <a href="#">1:1
					상담내역 </a><br> <a href="#">상품 Q&A내역 </a><br> <a href="#">
					공지사항 </a><br> <a href="#">FAQ</a><br>

			</section>

			<section class="sns">
				<img class="snsicon" src="https://i.postimg.cc/FzDGwzN1/fb.png">
				<img class="snsicon" src="https://i.postimg.cc/xdM5ntnw/insta.png">
				<img class="snsicon" src="https://i.postimg.cc/zvBTbjYX/twitter.png">
			</section>

		</div>
	</footer>




<script>
	var slides = document.getElementsByClassName("slide");
	var index = 0;

  	 function goLeft() {
	     // 배열이 슬라이드수를 음으로 초과하면 배열은 0이 된다
	     // 슬라이드수가 배열을 음으로 초과하는 것을 방어
	     if (index == 0) index = slides.length - 1;
	     else index--;
	     //첫번째 배열에 아래의 스타일을 추가하라
	     slides[0].style.marginLeft = "-" + index * 1200 + "px";
  	 }

   function goRight() {
     // 배열이 슬라이드수를 양으로 초과하면 배열은 0이 된다
     // 슬라이드수가 배열을 양으로 초과하는 것을 방어
     if (index == slides.length - 1) index = 0;
     else index++;
     // 첫번째 배열에 아래의 스타일을 추가하라
     slides[0].style.marginLeft = "-" + index * 1200 + "px";
   }

   // 예를 들어 0번배열이 보이려면 마진레프트는 0 2번배열이미지이 보이려면 마진레프트는 -1600이 되어야 함.
 </script>
	<script>
   var slideIndex = 1;

   // onclick 이벤트핸들러인 plusindex와 currentSlide를 실행하기 전 셋팅해야 하는 함수
   // n이 i배열 범위보다 양으로 음으로 초과하지 않도록 셋팅 */
   // con의 배열은 i, 명령을 입력받는 인자는 n
   // n은 i 배열에 대입됨
   // n인자는 plusindex로 값 넘겨받음
   function showImage(n) {
     var slide = document.getElementsByClassName('con'),
       dots = document.getElementsByClassName('rec'),
       i;
     // n이 con의 배열보다 커지는 것을 방어
     // n이 con 배열보다 커지면 n은 배열 1로 셋팅함
     if (n > slide.length) {
       slideIndex = 1;
     }
     // n이 마이너스가 되는것을 방어
     // n은 슬라이드 마지막 배열로 셋팅
     if (n < 1) {
       slideIndex = slide.length;
     }

     /* 기존 con을 안보이게 하고 현재 con을 보이게 하는 조건식 */
     // 일단 기존 con의 block을 none으로 셋팅
     // 기존의 모든 con을 서칭하기 위해 반목문 사용해서 탈탈 털음
     for (i = 0; i < slide.length; i++) {
       slide[i].style.display = 'none';
     }
     // 현재 i 인자와 같은 con 배열만 보이게 셋팅
     slide[slideIndex - 1].style.display = 'block';


     /* 기존 dots를 안보이게 하고 현재 dots를 보이게 하는 조건식 */
     // 일단 기존 활성화된 dots의 active를 삭제하도록 반복문으로 셋팅
     for (i = 0; i < dots.length; i++) {
       dots[i].className = dots[i].className.replace(' active', '');
     }
     // 현재 con 배열과 같은 dots만 active 활성화
     dots[slideIndex - 1].className += ' active';
   }


   /* run */
   showImage(slideIndex);


   /* con 롤링 이벤트 실행 함수 */
   // onclick에서 인수를 전달받음
   // 한번 클릭할때마다 양음으로 n이 1씩 늘어남
   function plusIndex(n) {
     showImage(slideIndex += n);
   }


   /* dots 클릭 이벤트 실행 함수 */
   // currentSlide 핸들러를 클릭하면 n에 해당하는 con이 호출됨
   function currentSlide(n) {
     showImage(slideIndex = n);
   }
   /*햄버거메뉴*/
 </script> -->


	<script>
	   var container = document.getElementById("image-container");
	   console.log(container);
	   function change_img(image) {
	     container.src = image.src;
	   }
	
	   $(function(){
	     $('.bt_up').click(function(){
	       var n = $('.bt_up').index(this);
	       var num = $(".num:eq("+n+")").val();
	       num = $(".num:eq("+n+")").val(num*1+1);
	     });
	     $('.bt_down').click(function(){
	       var n = $('.bt_down').index(this);
	       var num = $(".num:eq("+n+")").val();
	       num = $(".num:eq("+n+")").val(num*1-1);
	     });
	   })
   </script>

	<script>
		//select
		$(".default_option").click(function(){
		  $(this).parent().toggleClass("active");
		})
		
		$(".select_ul li").click(function(){
		  var currentele = $(this).html();
		  $(".default_option li").html(currentele);
		  $(this).parents(".select_wrap").removeClass("active");
		})
	</script>

</body>

</html>
