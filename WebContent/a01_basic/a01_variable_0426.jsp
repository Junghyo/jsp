<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/* 
# jsp 페이지 시작
1. jsp의 구성요소
	1) 설정부분(Directive) : < %@ page ~~~% >
		- 문서타입 html, excel
		- custom tag : <html, <h1, jsp에서 정의한 tag활용	
		- 활용할 자바클래스 import
	
	2) 스크립트 : java 코드를 선언, 호출, 할당
		- 표현식(Expression) : 화면출력 < %=자바코드% >
		- 스크립트릿(Scriptlet) : 자바코드 실행(선언, 조건식, 반복문, 객체호출) 
		  < %자바코드% > if, for, int number
	
	3) 선언부(Declaration) : 자바 메서드 선언, 변수 선언 < %!  % >
	
	
*/ 
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%	// 스크립트릿
	int num01 = 5;
	int num02 = 10;
	int sum = num01+num02;
%>
<body>
	<h1><%=num01 %>+<%=num02 %>=<%=sum %></h1>
	<%
		for(int cnt=0; cnt<=100; cnt++){
	%>
	<!-- 화면 -->
			<h1 align="center">for문으로 100번 반복</h1>
	<%	
		}
			
	%>
	<table>
	<% 
		for(int i=0; i<3; i++){
	%>		
			<tr>
	<%
			for(int j=0; j<3; j++){
	%>			
			<th>a</th>
	<%
			}
	%>		
			</tr>
	<%
		}
	%>
	</table>	
</body>
</html>
