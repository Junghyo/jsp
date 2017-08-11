<!-- 
  # 코어 tag
 1. if~else나 변수의 지정 등과 같이 논리적 처리
 
 2. tag 라이브러리
 	1) 변수 지원
 		- c:set : jsp에 사용될 변수를 지정
 		  var: 변수명, value: 변수에 매핑되는 값
 		  ex) c:set var="num01" value="25"/
 		  
 		- c:remove : 설정된 변수 제거
 	
 	2) 흐름 제어
 		- c:if : 조건을 제어할 때 활용
 		  test : boolean 조건식(el)
 		  ex) c:if test="${param.num01>=60}"합격
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    

<!DOCTYPE html>
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
<body>
<!-- 
	1) 저장
	c:set var="변수명" value="값" scope="범위"
	
	2) 호출
	$ {변수명}
	
	ex) name
		age
		loc
		이름: @@@
		나이: @@
		사는 곳: @@@
-->
	<c:set var="fruit01" value="사과"/>
	과일명:${fruit01 }<br>
	<c:set var ="name" value="Ronaldo"/>
	<c:set var="age" value="31"/>
	<c:set var="loc" value="포르투갈"/>
	이름:${name }<br>
	나이:${age }<br>
	사는 곳: ${loc }
<!--  
 연산처리
 price
 cnt
 가격:@@@
 갯수:@@@
 총비용:@@@
-->
	<c:set var="price" value="3000" scope="session"/>
	<c:set var="cnt" value="5"/>
	<c:set var="tot" value="${price*cnt }" scope="application"/>
	<h3>가격:${price }</h3>
	<h3>갯수:${cnt }</h3>
	<h3>총비용:${tot }</h3>
<!-- 
 # jsp에서 scope의 범위
 1) c:set scope="속성값"
 	- page : 현재 page까지
 	- request : 요청 page까지
 	- session : 브라우저 단위까지
 	- application : 서버 단위까지
 	
 	c:set scope="page/request/session/application/"
 -->
	<a href="a10_jstlScope_0519.jsp">변수 범위 확인</a>
 
</body>
</html>
