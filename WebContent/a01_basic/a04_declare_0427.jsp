<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
//	declaration 메서드 선언과 활용
	public int plus(int num01, int num02){
	return num01+num02;
}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
# jsp의 디렉티브
1) 디렉티브 : jsp 페이지에 대한 설정
< %@ [디렉티브명page, taglib, include] 속성1="값1" 속성2="값2" %>

2) page : 페이지정보로 jsp가 생성한 문서의 타입, 출력버퍼 크기, 에러 페이지 등

3) taglib : 태그 라이브러리

4) include : 특정 영역에 다른 문서 포함
	 
# page 디렉티브의 속성들
< %@ page 속성=값
	- contentType : 문서 타입 ex) html, excel 등
	- import : java api 클래스, 사용자 정의 클래스 호출
	- session : 세션 사용 여부 true/false
	- buffer : 출력을 효과적으로 처리하기 위한 메모리 공간. jsp페이지의 출력 버퍼 크기 지정. none/@@kb(기본값 : 8kb)
	- autoFlash : 출력 버퍼가 찼을 경우 자동으로 출력스트림에 보내고 비워주는 여부를 boolean값으로 지정 true/false
	- info : jsp페이지에 대한 설명 입력
	- errorPage : jsp페이지에서 에러발생시 보여줄 페이지 지정. ex) errorPage="error01.jsp"
	- isErrorPage : 에러발생시 지정된 에러페이지 인지?		   ex) error01.jsp에서 속성 isErrorPage="true"
	- pageEncoding : 페이지 자체의 문자 인코딩 지정
	
# 
1) 스크립트릿
	- 화면, 자바 소스 구분 처리 < % 자바코드 %>
	- 조건문, 반복문 화면
		< % if(조건){%>
			화면처리...< %=자바변수/메서드()%>
		< %}%>
	- 표현식(expression) < %=%> : 스크립트릿과 함께 처리할 출력내용
	- 선언부(declaration) < %! %> : 함수(메서드) 선언부. < %! %>
	

*/
	$(document).ready(function(){

	});

</script>
<style type="text/css">

</style>
</head>
<%
	int num01=25;
	int num02=70;
%>
<body>
	<h1><%=plus(10,20)%></h1>
	<h1><%=num01 %>+<%=num02 %>=<%=plus(num01,num02)%></h1>
</body>
</html>