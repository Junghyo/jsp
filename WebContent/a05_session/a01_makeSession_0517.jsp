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
/*
# 목표
- jsp에서 사용되는 세션의 의미를 안다.
- 세션의 범위와 한계를 파악한다.
- jsp 코드로 세션을 설정할 수 있다.
- 웹 컨테이너 세션의 옵션을 설정 할 수 있다.
- 세션이 사용되는 프로세스를 이해하고, 프로그래밍으로 처리할 수 있다.

# 생각해봅시다.
- 클라이언트(웹 서버에 접속하는 사용자)가 세션이 왜 필요할까?
- 세션의 한계치와 범위를 설정해야 하는가?(시간적 범위)
- 세션이 사용되는 업무 프로세스는 어떤 것이 있을까?
		  
# 세션이란
- 사용자(클라이언트)의 상태 정보를 임시적인 메모리로 서버에서 가지고 있게끔 처리해주는 jsp 기본객체
- 하나의 웹브라우저에 하나의 세션을 설정한다.

  	┌──클라이언트1──┐						┌──────서버(웹 컨테이너)──────┐
	└─────────────┘		------------>	│    -클라이언트1 세션          │        
	┌──클라이언트2──┐		------------>	│    -클라이언트2 세션          │  
	└─────────────┘						└──────────────────────────┘
- 세션 범위 : 클라이언트1이 브라우저를 닫는 순간 프로그램상 logout하면서 세션종료
			  시간을 정해놓고(web.xml) 세션종료
			  
 # jsp에서 세션처리
 1) 세션생성
	- 키와 value 매핑처리
	- session.setAttribute("세션key", "객체(value)");
	- 객체가 value로 지정될 수 있다는 것은 문자열뿐만 아니라 객체 안에 있는
	  여러 필드를 저장할 수 있다는 말이다.
	- 브라우저를 닫지 않는 이상 다른 페이지에서 호출했을 때, 해당 정보를 가져올 수 있다.
	- session.getAttribute("세션key");
*/


	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<!-- 
 session은 page 지시자에서 옵션을 설정할 수 있는데 
 default가 page session="true"이기에 생성할 때, 선언하지 않는 경우가 많다.
--> 
<%
//	session 선언하기 
//	session.setAttribute("key", value객체);
	session.setAttribute("customer", "himan");
%>   
<body>
	<h1>시작 page</h1>
	<h1>저장된 session : <%=session.getAttribute("customer") %></h1>
	<a href="a02_getSession_0517.jsp">두번째page 이동</a>
</body>
</html>