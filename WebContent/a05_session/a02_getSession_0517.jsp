<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"
    import="java.text.SimpleDateFormat"
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
/*
 # session 메서드
	- getId() : 세션 고유 id 구한다.
	- getCreateTime() : 세션이 생성된 시간 1970년 1월 1일 이후 출력 시간, 단위 1/1000초
	- getLastAccessedTime() : 브라우저가(client)가 session을 통해 마지막으로 접속한 시간, 단위 1/1000초
	- invalidate() : 세션 강제 종료, 기존에 사용하던 session 기본 객체가 삭제
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	Date time = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	time.setTime(session.getCreationTime());
	String creTime=sdf.format(session.getCreationTime());
	time.setTime(session.getLastAccessedTime());
	String lastTime=sdf.format(time);
	
%>
<body>
	<h1>두번째 page</h1>
	<h1>두번쨰 page 저장된 session : <%=session.getAttribute("customer") %></h1>
	<h1>session ID: <%=session.getId() %></h1>
	<h1>session 생성시간: <%=sdf.format(session.getCreationTime()) %></h1>
	<h1>session 생성시간: <%=creTime %></h1>
	<h1>브라우저가 마지막으로 session접근시간: <%=sdf.format(session.getLastAccessedTime()) %></h1>
	<h1>브라우저가 마지막으로 session접근시간: <%=lastTime %></h1>
	<h1>브라우저가 마지막으로 session접근시간: <%=new Date(session.getLastAccessedTime()) %></h1>

	<a href="a01_makeSession_0517.jsp">첫번째page 이동</a><br>
	<a href="a03_checkSession_0517.jsp">세번째page 이동. session이 살아있는지 확인</a>
</body>
</html>