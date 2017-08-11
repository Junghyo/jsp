<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
	/*
	 확인예제
	 1) 요청값 처리 기본
	 	커피프린스에서
	 	구매할 커피		가격			개수
	 	@@@				@@@			@@@
	*/	
</script>
<style type="text/css">

</style>
</head>
<body>
	<form method="post">
		메뉴<select name="menu">
			<option>쌍화차</option>
			<option>아메리카노</option>
			<option>레몬에이드</option>
		</select>
		가격<input type="number" name="price" size="2">
		1잔<input type="radio" name="cnt" value="1">
		2잔<input type="radio" name="cnt" value="2">
		3잔<input type="radio" name="cnt" value="3">
		<button type="submit">주문</button>
	</form>
	초기값? ${empty param.menu}
	주문하신 음료는 ${param.menu }<br>
	가격은 ${param.price }원에 ${param.cnt }잔으로
	계산서 ${param.price * param.cnt }원 발급합니다.
	
</body>
</html>