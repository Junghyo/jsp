<!-- 
 # request/session 객체 el로 처리
 - 요청값 저장이나 세션값 저장은 해당 4가지 scope 범위에 대한 데이터를
   el로 효과적으로 가지고 올 수 있다.
  
 - request.setAttribute("name", "홍길동"); ==> $ {name}
 - Product p = new Product();
 - p.setPrice(5000); p.setName("바나나");
 - session.setAttribute("prod", p); ==> $ {prod.price}, $ {prod.name}

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*"
    import="z02_vo.*"
    %>
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
</script>
<style type="text/css">

</style>
</head>
<%
	String [] games = {"가위", "바위", "보"};
	request.setAttribute("team01", games[ (int)(Math.random()*3)]);
	request.setAttribute("team02", games[ (int)(Math.random()*3)]);
	Product p = new Product("사과", 30);
	session.setAttribute("prod", p);
%>
<body>
	<h1>추억의 가위, 바위, 보</h1>
	<h2>player1: ${team01 }</h2>
	<h2>player2: ${team02 }</h2>
	<h1>물품현황</h1>
	<h2>물건명:${prod.jprod }</h2>
	<h2>갯수:${prod.jcount }</h2>
	<a href="a05_scopeEl_0519.jsp">다음 page</a>
</body>
</html>
<!-- 
 el과 session 처리
 login
 ID: [	]
 PASS: [	]
 [세션처리]
 ==> session Member에 id pass 할당하고 다음 page에서 el를 이용하여 위와 같이 출력하게 처리

 -->