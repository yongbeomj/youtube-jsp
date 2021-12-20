//스크롤
//$(window) : 현재 창

var item = 2;
$(window).scroll(function(){ //스크롤 이벤트
	//$(window).scrollTop() : 현재 스크롤의 위치
	//alert("현재 스크롤 위치 : " + $(window).scrollTop());
	//alert("현재 화면의 크기 [보이는 화면] : " + $(window).height());
	//alert("문서의 높이[보이지 않는 화면 포함] : " + $(document).height());
	
	// 스크롤이 바닥에 닿았을때 계산
	if($(window).scrollTop() == $(document).height() - $(window).height()){
		//(문서전체) 현재 스크롤 위치 == 문서 전체 높이 - 현재 문서 높이
		//alert($(document).height() - $(window).height());
		
		$.ajax({
			url:"../../controller/clipviewinfocontroller.jsp",
			data:{item:item},
			success : function(result){
				//alert(result);
				$("section").append(result);
				//태그명.append(결과) //해당 태그에 결과 추가
			}
		})
	item++; //스크롤이 바닥에 닿았을때 주문 1씩 증가
	//item+2; //스크롤 한번에 아이템 2개씩 나옴
	}
	
});