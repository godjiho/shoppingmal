<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.Product" %>
<%@ page import = "dao.ProductDao2" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/sharestyle.css">
<link rel="stylesheet" href="productAdd.css">
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
		let data, optionlist;
		
		function printTitle() {
			const title = document.getElementById('title').value;
			document.getElementById('title_r').innerText = title;
		}
		function printsubTitle()  {
			  const subtitle = document.getElementById('subtitle').value;
			  document.getElementById("subtitle_r").innerText = subtitle;
		}
		function printprice()  {
			  const name = document.getElementById('price').value;
			  document.getElementById("price_r").innerText = name;
		}
		function printcategory()  {
			  const name = document.getElementById('category').value;
			  document.getElementById("category_r").innerText = name;
		}
		function printcode()  {
			  const name = document.getElementById('code').value;
			  document.getElementById("code_r").innerText = name;
		}
		function printqty()  {
			  const name = document.getElementById('qty').value;
			  document.getElementById("qty_r").innerText = name;
		}
		function printoption()  {
			  const name = document.getElementById('option').value;
			  document.getElementById("option_r").innerText = name;
		}
		function printsuboption() {
			const name = document.getElementById('suboption').value;
			optionlist = name.split(',');
			console.log(optionlist.length);
			console.log(optionlist);
			for (var i = 0; i < optionlist.length; i++) {
				document.getElementById('suboption_'+i).innerText = optionlist[i];
				document.getElementById('suboption'+i).style.display='block';
				
				  
			}
		}
		function printimage()  {
			  const name = document.getElementById('image').value;
			  data = name.split('ㆍ');
			
			  for (var i = 0; i < data.length; i++) {
				  document.getElementById('image_'+i+'').src = data[i];
				  document.getElementById('image_'+i+'').style.display='inline-block';
			  }
		}
		
		
		function printmoreinformation()  {
			  const name = document.getElementById('moreinformation').value;
			  document.getElementById("moreinformation_r").innerText = name;
		}
		
		
	</script>		
<style>

</style>
	<%
	String title=null, subtitle=null, price=null, category=null, 
		   code=null, qty=null, option=null, image=null, moreinformation=null;
	%>
	
</head>
<body>
	<%@ include file="header.jsp" %>
	<!-- 상품 등록 입력란 -->
		<!-- <img id="test_r" src=""> -->
		<form name="newProduct" action="productAdd.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품이름</label>
				<div class="col-sm-3">
					<input type="text" name="title" class="form-control" 
					id="title" onkeyup='printTitle()'>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">서브이름</label>
				<div class="col-sm-3">
					<input type="text" name="subtitle" class="form-control" 
					id="subtitle" onkeyup='printsubTitle()'>
				</div>
			</div>
		
			<div class="form-group row">
				<label class="col-sm-2">상품가격</label>
				<div class="col-sm-3">
					<input type="text" name="price" class="form-control" 
					id="price" onkeyup='printprice()'>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">카테고리</label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" 
					id="category" onkeyup='printcategory()'>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">제품코드</label>
				<div class="col-sm-3">
					<input type="text" name="code" class="form-control" 
					id="code" onkeyup='printcode()'> 
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="qty" class="form-control" 
					id="qty" onkeyup='printqty()'>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">옵션</label>
				<div class="col-sm-5">
					<input class="option-none" type="checkbox" name="condition" value="New" id="option-none">
					<label class="option-font" for="option-none">옵션있음</label><br>
					
					<div class="option-name">
						<label class="col-sm-2">옵션 제목</label>
						<div class="col-sm-3">
							<input type="text" name="option" class="form-control" id="option" onkeyup='printoption()'>
						</div>
						<label class="col-sm-2">옵션 목록(예시 : 색상이면 (빨강,파랑,초록))</label>
						<div class="col-sm-3">
							<textarea name="suboption" cols="50" rows="2" id="suboption" onkeyup='printsuboption()'></textarea>
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">메인이미지</label>
				<div class="col-sm-3">
					<textarea name="image1" cols="50" rows="2" id="image" onkeyup='printimage()'></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지2</label>
				<div class="col-sm-3">
					<textarea name="image2" cols="50" rows="2" id="image" onkeyup='printimage()'></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지3</label>
				<div class="col-sm-3">
					<textarea name="image3" cols="50" rows="2" id="image" onkeyup='printimage()'></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이미지4</label>
				<div class="col-sm-3">
					<textarea name="image4" cols="50" rows="2" id="image" onkeyup='printimage()'></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-3">
					<textarea name="moreinfo" rows="2" cols="50" 
					id="moreinformation" onkeyup='printmoreinformation()'></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록" >
				</div>
				<div>
					<button>미리보기</button>
				</div>
			</div>
			
		</form>
		
		
		<div class="full">

		<section class="proslide">
			<div class="top-section">
				<img id="image-container" src="https://m.ssaemstore.com/web/product/big/202212/d0339a80069ded115245b19ad849f89c.jpg" class="first">
			</div>

			<div class="nav">
			 	<!-- <script>
		 			for (var i = 0; i < 5; i++) {
						document.write('<img style="display:none;" onclick="change_img(this)" src= "" id="image_'+i+'">');
					}
				</script> -->
				<img style="display:none;" onclick="change_img(this)" src= "" id="image_0">
				<img style="display:none;" onclick="change_img(this)" src= "" id="image_1">
				<img style="display:none;" onclick="change_img(this)" src= "" id="image_2">
				<img style="display:none;" onclick="change_img(this)" src= "" id="image_3">
				<img style="display:none;" onclick="change_img(this)" src= "" id="image_4">
			</div>
		</section>

		<div class="contxt">
			<div class="col-sm-6">
				<div id='title_r' class="h2">제목을 입력해주세요</div>
				<div id='subtitle_r' class="h4">추가 제목을 입력해주세요<%-- <%=list.get(PN).getsub_name()%> --%></div>

				<span class="big"><b>₩</b><b id='price_r'>가격을 입력해주세요</b></span>
				<p>
				<div class="in">
					<div class="be">
						<div class="h4">혜택안내</div>
						<h5>
							<span class="slim">카드혜택</span><br>무이자할부
						</h5>
					</div>
					<div class="goods">
						<div class="h4">상품안내</div>
						<h5>
							<span class="slim2">카테고리</span><br><span id="category_r">카테고리를 입력해주세요</span><br>
							<span class="slim2">제품코드</span><br><span id="code_r">제품코드를 입력해주세요</span>
						</h5>
					</div>
				</div>


				<div class="wrapper">
					<div class="select_wrap">
						<ul class="default_option">
							<li>
								<div class="option pizza">
									<div class="select-icon"></div>
									<p id="option_r">옵션을 설정해주세요</p>
								</div>
							</li>
						</ul>
						<ul class="select_ul">
							<script>
								for (var i=0; i<10; i++){
									document.write('<li id="suboption'+i+'" style="display:none"><div class="option pizzas"><p id="suboption_'+i+'"></p></div></li>')	
								}								
							</script>
						</ul>
					</div>
					
					<button class="bag">Shopping bag</button>
					<button class="buy">buy now</button>
					
					<img class="banner" src="">
					
					<%-- <img class="banner" src="<%list.get(PN).getpdimg();%>"> --%>
				</div>
				<!-- /col-sm-6 -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	
		
		
		
		
	
		
		
	<script>
	   var container = document.getElementById("image-container");
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
   
	
	<%
	request.setCharacterEncoding("UTF-8");
	String title1 = request.getParameter("title");
	String subtitle1 = request.getParameter("subtitle");
	
 	String price1 = request.getParameter("price");
 	/* int price1 = Integer.parseInt(request.getParameter("price")); */
	String moreinfo1 = request.getParameter("moreinfo");
	String option1 = request.getParameter("option");
	String category1 = request.getParameter("category");
	String code1 = request.getParameter("code");
	String image1 = request.getParameter("image1");
	String image2 = request.getParameter("image2");
	String image3 = request.getParameter("image3");
	String image4 = request.getParameter("image4");
	String image5 = request.getParameter("image5");
	String image6 = request.getParameter("image6");
	String image7 = request.getParameter("image7");
	String suboption1 = request.getParameter("suboption");
	String qty1 = request.getParameter("qty");
	if (code1 != null) {
		boolean pd = ProductDao2.getInstance().selectTwo(code1);
		if (pd) {
			System.out.println("product get값 입력성공");
			Product product = new Product(title1,subtitle1,price1,moreinfo1,option1,category1,code1,suboption1,qty1,image1,image2,image3,image4,image5,image6,image7);
			System.out.println("성공");
			boolean pi = ProductDao2.getInstance().insertProduct(product);
			if (pi){
				System.out.println("db입력 성공");
			} else {
				System.out.println("db입력 실패");
			}
		} else {
			System.out.println("실패");
		}
		System.out.println("상품코드(html) : " + code1);
	}
	
	
	System.out.println(request.getParameter("title"));
	System.out.println(request.getParameter("price"));
	
	
	
	
	
	%>
</body>



</html>