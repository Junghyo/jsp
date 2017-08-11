<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*"
    import="z02_vo.*"
    %>
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
	<c:import url="a26_top_0522.jsp">
		<c:param name="num01" value="56"></c:param>
		<c:param name="num02" value="40"></c:param>
	</c:import>
	<h3>메인내용</h3>
	<h3>${name }님 호출합니다.</h3>
	<h3>${namePage }님 호출합니다.</h3>
</body>
</html>
<!-- 
 # 숫자 및 날짜 formating 처리 태그
 1) fmt:formatNumber 태그
	- 숫자를 양식에 맞춰 문자열(String)로 변환해준다.
	- DB(number) ==> java.lang.Integer ==> 3,500
	
 2) 속성
	- value : 실제 입력한 숫자 data
	- type : 값타입 ex) currency(통화), percent(%)
	- pattern : 패턴 ex) 000,000.00
	- currentCode : 통화코드
	
 3) ex
 	- fmt:formatNumber value="999999" type="currency" currencySymbol="원"		
 -->
 <!-- 
 # 국제화 태크(fmt:XXX)
 1) 로케일 지정
 	- SetLocale : 지역을 지정한다.
 	- requestEncoding : 요청 파라미터 인코딩 지정
 	
 2) 메시지 처리
 	- message : 지역에 알맞은 메세지 출력
 	
 3) 숫자 및 날짜 포맷팅
 	- formatNumber : 숫자를 포맷팅한다.
 	- parseDate : 문자열 ==> 날짜 객체로 변환
 	- parseNumber : 문자열 ==> 숫자로 변환
 	- setTimeZone : 시간대 정보를 특정 변수로 저장
 	- timeZone : 시간대를 지정
 	
 4) 기본형식
 	- fmt:setLocale value="" scope="" : 국제화 태그들이 사용할 로케일 지정
 	- fmt:requestEncoding value="UTF-8" : 요청 파라미터의 캐릭터 인코딩 지정	

 -->