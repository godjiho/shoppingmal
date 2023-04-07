<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/sharestyle.css">
  <link rel="stylesheet" href="shoppingCart.css">
  <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
  <title>Document</title>
</head>

<body>
	<%@ include file="header.jsp" %>
	<div class="content">
		<div class="devideDIV">
			<span>장 바 구 니 (My Shopping Cart)
<div class="cartIconDIV"></div>
			</span>

		</div>
		<div class="cartTop">
			<div class="countBalance">
				<span style="color:#FF6347">보유 포인트 : </span>
				<span style="font-size:20px;">1000</span>
				<span style="color:#FF6347;font-size:24px;">원</span>
			</div>
			<div class="addressDIV">
				<span>배송지관리</span>
			</div>
		</div>
 <div style="clear:both;"></div>
		
		<div class="cartMain">
			<table id="cartTable">
				<thead>
					<tr>
						<th>
							<label for="fl select-all">
					<input type="checkbox" class="check-all check"/>
					<span><a href="javascript:void(0)" class="selallSPAN">&nbsp;전체</a></span>
							</label>
						</th>
						<th>상 품</th>
						<th>가 격</th>
						<th>수 량</th>
						<th>합 산</th>
						<th>관 리</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="checkbox">
							<input type="checkbox" class="check-one check">
						</td>
						
						<td class="goods">
							<!-- 이미지 DB에서 받아와야함 -->
							<img src="http://image.genie.co.kr/Y/IMAGE/IMG_ARTIST/080/574/299/80574299_1603344703162_2_600x600.JPG" alt=""/>
							<span><a href="##" class="goodsTitle">첫번째 뽀로로 상품</a></span><br/>
							<span>from:</span><br/>
							<span><a href="##" class="sellerTitle">투니버스</a></span>
						</td>
						<td class="price">200</td>
						<td class="count">
							<span class="reduce"></span>
							<input type="text" class="count-input" value="1"/>
							<span class="add">+</span>
						</td>
						<td class="subtotal">200</td>
						<td class="opration">
							<span class="deleteOne">삭 제</span>
						</td>
						
					</tr>
					
					<tr>
						<td class="checkbox">
							<input type="checkbox" class="check-one check"/>
						</td>
						<td class="goods">
							<img src="http://image.genie.co.kr/Y/IMAGE/IMG_ARTIST/080/574/299/80574299_1603344703162_2_600x600.JPG" alt=""/>
							<span><a href="##" class="goodsTitle">중국어 보기싫어</a></span><br/>
							<span>from:</span><br/>
							<span><a href="##" class="sellerTitle">제작사인듯</a></span>
						</td>
						<td class="price">180</td>
						<td class="count">
							<span class="reduce"></span>
							<input type="text" class="count-input"  value="1"/>
							<span class="add">+</span>
						</td>
						<td class="subtotal">180</td>
						<td class="opration">
							<span class="deleteOne">삭 제</span>
						</td>
					</tr>
					<tr>
						<td class="checkbox">
							<input type="checkbox" class="check-one check"/>
						</td>
						<td class="goods">
							<img src="http://image.genie.co.kr/Y/IMAGE/IMG_ARTIST/080/574/299/80574299_1603344703162_2_600x600.JPG" alt=""/>
							<span><a href="##" class="goodsTitle">아르테카였던것</a></span><br/>
							<span>from:</span><br/>
							<span><a href="##" class="sellerTitle">암튼그런듯</a></span>
						</td>
						<td class="price">200</td>
						<td class="count">
							<span class="reduce"></span>
							<input type="text" class="count-input"  value="1"/>
							<span class="add">+</span>
						</td>
						<td class="subtotal">200</td>
						<td class="opration">
								<span class="deleteOne">삭 제</span>
						</td>
					</tr>
					
				</tbody>
			</table>
			
		</div>
		<div class="cartFooter" id="cartFooter">
			<div class="selall fl">
				<label for="fl select-all">
					<input type="checkbox" class="check-all check"/>
					<span><a href="javascript:void(0)" class="selallSPAN">&nbsp;전체</a></span>
				</label>
			</div>
			<a href="#" id="multiDelete" class="fl delete">선택 삭제</a>
			<a href="#" id="allDelete" class="fl delete">전체 삭제</a>	
			<div class="fr closing">주문하기</div>
			<div class="fr total">주문 금액 : <span id="priceTotal">0</span>원</div>
			<div class="fr selected" id="selected">
				선택상품	
				<span id="selectedTotal">0</span>건
				<!-- <span class="arrow up">＜Click Here Aft Sel＞</span>
				<span class="arrow down"></span> -->
			</div>
			<div class="selected-view">
		        <div id="selectedViewList" class="clearfix">
		            <!-- <div><img src="images/1.jpg"/>
		            	<span class="selCount">1</span>
		            	<span class="del">取消选择</span>
		            </div> -->
		        </div>
		        <span class="arrow">◆<span>◆</span></span>
    		</div>
		</div>
	</div>  
	<!-- Footer -->
      <%@ include file="footer.jsp" %>
	
	<script>
	window.onload=function(){
		//호환 document.getElementsByClassName 방법；
		if(!document.getElementsByClassName){
			document.getElementsByClassName=function(cls){
				var ret=[];
				var els=document.getElementsByTagName('*');
				for (var i = 0; i < els.length; i++) {
					if(els[i].className===cls
					 || els[i].className.indexOf(cls +' ')>=0
					  || els[i].className.indexOf(' '+cls)>=0 
					  || els[i].className.indexOf(' '+cls +' ')>=0){
						ret.push(els[i]);
					}
				};
				return ret;
			}
		}
		var cartTable=document.getElementById('cartTable');
		var tr=cartTable.children[1].rows; //children하위노드;
		var checkInputs=document.getElementsByClassName('check');
		var checkAllInput=document.getElementsByClassName('check-all');
		var selectedTotal=document.getElementById('selectedTotal');
		var priceTotal=document.getElementById('priceTotal');
		var selected=document.getElementById('selected');
		var cartFooter=document.getElementById('cartFooter');
		var selectedViewList=document.getElementById('selectedViewList');
		var multiDelete=document.getElementById('multiDelete');
		var allDelete=document.getElementById('allDelete');
		var selallSPAN=document.getElementsByClassName('selallSPAN');

		//체크박스 이벤트；
		for (var i = 0; i < checkInputs.length; i++) {
			checkInputs[i].onclick=function(){
				if (this.className==='check-all check') { //전체체크；
					for(var j=0;j<checkInputs.length;j++){
						checkInputs[j].checked=this.checked;
						console.log(checkInputs[j]);
					}
				};
				if(this.checked==false){
					for(var k=0;k<checkAllInput.length;k++){
						checkAllInput[k].checked=false;
						console.log(checkAllInput[k]);
					}
				}
				getTotal();
			}
		};
		selallSPAN[0].onclick=selallSPAN[1].onclick=function(){
			for(var k=0;k<checkAllInput.length;k++){
				if(checkAllInput[k].checked){
					checkAllInput[k].checked=false;
					console.log("	")
					
				}else{
					checkAllInput[k].checked=true;
					console.log("텍스트클릭 전체선택")
				}
			}
			for(var j=0;j<checkInputs.length;j++){
				checkInputs[j].checked=checkAllInput[0].checked;
				console.log("텍스트클릭 전체선택해제")
			}
			getTotal();
		}

		//계산；
		function getTotal(){
			var selected=0;
			var price=0;
			var HTMLstr='';
		 	for (var i = 0; i < tr.length; i++) {
				var perCount=tr[i].getElementsByTagName('input')[1].value;
				if(tr[i].getElementsByTagName('input')[0].checked){
					tr[i].className="on";
					selected+=parseInt( tr[i].getElementsByTagName('input')[1].value);
					price+=parseFloat( tr[i].cells[4].innerHTML );
					HTMLstr+='<div><img src="'+tr[i].getElementsByTagName('img')[0].src+'"/><span class="selCount">'+perCount+'</span><span class="del" index="'+i+'">선택취소</span></div>'
					console.log("체크발생");
				}else{
					tr[i].className=" ";
					console.log("체크해제");
				}
			};
		/* 	for (var i = 0; i < tr.length; i++) {
				var perCount=tr[i].getElementsByTagName('input')[1].value;
				if(tr[i].getElementsByTagName('input')[0].checked||tr[i].onclick){
					tr[i].className="on";
					selected+=parseInt( tr[i].getElementsByTagName('input')[1].value);
					price+=parseFloat( tr[i].cells[4].innerHTML );
					HTMLstr+='<div><img src="'+tr[i].getElementsByTagName('img')[0].src+'"/><span class="selCount">'+perCount+'</span><span class="del" index="'+i+'">선택취소</span></div>'
					console.log("체크발생");
				}else if(tr[i].getElementsByTagName('input')[0].checked==false){
					tr[i].className=" ";
					console.log("체크해제");
				}
			}; */
			
			selectedTotal.innerHTML=selected;
			priceTotal.innerHTML=price.toFixed();
			selectedViewList.innerHTML=HTMLstr;
			//0을 선택한 경우；
			if(selected==0){
				cartFooter.className="cartFooter";
			}
		}

		//선택된 상자 표시 및 숨기기；
		selected.onclick=function(){
			if(cartFooter.className=='cartFooter'){
				if(selectedTotal.innerHTML!=0){
					cartFooter.className='cartFooter show';
				}
			}else{
				cartFooter.className="cartFooter";
			}
		}

		//선택 취소---》이벤트대리
		selectedViewList.onclick=function(e){
			e=e||window.event;
			var el=e.srcElement;
			if(el.className=="del"){
				var index=el.getAttribute('index');
				var input=tr[index].getElementsByTagName('input')[0];
				input.checked=false;
				input.onclick();
			}
		}

		//더하기 빼기；
		for (var i = 0; i < tr.length; i++) {
			tr[i].onclick=function(e){
				e=e||window.event;
	    		document.onselectstart=new Function("event.returnValue=false;");
				var el=e.target||e.srcElement;
				var cls=el.className;
				var input=this.getElementsByTagName('input')[1];
				var val=parseInt(input.value);
				var reduce=this.getElementsByTagName('span')[3];
				switch(cls){
					case 'add':
					     input.value=val+1;
					     reduce.innerHTML='-';
					     getSubtotal(this);
					     break;
					case 'reduce':
					     if(val>1){
					     	input.value=val-1;
					     	getSubtotal(this);
					     }
					     if(input.value<=1){
					     	reduce.innerHTML='';
					     }
					     break;
					case 'deleteOne':
					//하나만삭제；
					     var conf=confirm('삭제하시겠습니까？');
					     if(conf){
					     	this.parentNode.removeChild(this);
					     }
					     break;
					default:
					     break;
				}
				getTotal();
			}
			//input이벤트；
			tr[i].getElementsByTagName('input')[1].onkeyup=function(){
				var val=parseInt(this.value);
				var tr=this.parentNode.parentNode;
				var reduce=tr.getElementsByTagName('span')[3];
				if(isNaN(val)||val<1){
					val=1;
				}
				this.value=val; //인풋제어；
				if(val<=1){
					reduce.innerHTML="";
				}else{
					reduce.innerHTML="-";
				}
				getSubtotal(tr);
				getTotal();
			}
		};
		//작은합계
		function getSubtotal(tr){
			var tds=tr.cells;
			var price=parseFloat(tds[2].innerHTML);
			var count=tr.getElementsByTagName('input')[1].value;
			var subTotal=parseFloat(price*count).toFixed(0);
			tds[4].innerHTML=subTotal;
		}

		//삭제；
		multiDelete.onclick=function(){
			if(selectedTotal.innerHTML!='0'){
				var conf=confirm('선택된 항목을 삭제하시겠습니까?');
				if(conf){
					cartDel();
					getTotal();
				}
			}
		}
		allDelete.onclick=function(){
			var conf=confirm('장바구니 전체를 비우시겠습니까?');
			if(conf){
				checkAllInput[0].checked=true;
				checkAllInput[0].onclick();
				cartDel();
				getTotal();
			}
		}
		function cartDel(){
			for (var i = 0; i < tr.length; i++) {
				var input=tr[i].getElementsByTagName('input')[0];
				if (input.checked) {
					tr[i].parentNode.removeChild(tr[i]);
					i--; //삭제할때i값 변경 주의；
				};
			};
		}
		
  	/* 	for (var i=0; i<tr.length; i++){
  			tr[i].onclick=checkInputs[i].onclick=function() {
				if (checkInputs[i].checked) {
					checkInputs[i].checked=false;
					console.log("체크해제"+i)
				}
				else {
					checkInputs[i].checked=true;
					console.log("체크"+i)
				}
			}	
		} */
	  
		
	}
	</script>

</body>
