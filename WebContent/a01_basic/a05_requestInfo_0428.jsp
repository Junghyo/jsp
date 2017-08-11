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
# request 기본 객체
브라우저(익스프로러, 크롬) <------> 서버(Web-Server)
Client가 서버로 접속했을 때 접속관련 정보를 가져오는 것이 웹어플리케이션 프로그램의 request

request 기본 객체의 기능
	- 클라이언트(웹 브라우저)와 관련된 정보 읽기 기능
	- 서버 관련된 정보
	- 클라이언트가 전송한 요청 파라미터 정보
	- 클라이언트가 전송한 요청 헤더 읽기 정보
	- 클라이언트가 전송한 쿠키
	- 속성 처리 기능 
	
# request통한 정보 읽기
1) 형식
	- request.getXXXX();
	클라이언트1 --->
	클라이언트2 --->		서버(Web Server)
	- getRemoteAddr() : 클라이언트 접속 ip
	- getProtocol() : 클라이언트 요청 프로토콜
	- getMethod() : get/post 전송 떄 사용한 방식
	- getContextPath() : 컨텍스트 경로		-- jsp_exp/WebContent/ 시작위치
	- getServerName(), getServerPort()
	
	http://localhost:8080/jsp_exp/WebContent
	
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>	

<body>
	<h2>클라이언트 IP: <%=request.getRemoteAddr() %></h2>
	<h2>요청정보 프로토콜: <%=request.getProtocol() %></h2>
	<h2>요청 정보 메소드: <%=request.getMethod() %></h2>
	<h2>컨텍스트 경로(프로젝트명): <%=request.getContextPath() %></h2>
	<h2>서버이름: <%=request.getServerName() %></h2>
	<h2>서버포트: <%=request.getServerPort() %></h2>

</body>
</html>