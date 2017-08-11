<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
# 요청 헤더 정보 처리
1) 웹 브라우저는 HTTP 프로토콜에 따라 요청정보를 웹 서버에 전송한다.
2) 웹 브라우저의 종류에 대한 정보를 헤드에 담아서 넘겨준다.
3) request 기본 객체에 포함된 헤드정보
	- getHeader("헤드key값")
	- Enumeration getHeaders("헤드값")
	- Enumeration getHeaderNames() : 모든 헤드의 이름

*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
<%
//	getHeaderNames() : 헤드의 모든 이름값을 가져옮
//	getHeader("헤드 이름값") : 헤드이름값에 해당하는 value값을 가져옴
	Enumeration headerParam = request.getHeaderNames();
	while(headerParam.hasMoreElements()){ 
		String headerName=(String)headerParam.nextElement();
		String headerValue=request.getHeader(headerName);		
%>
	<h2><%=headerName %>: <%=headerValue %></h2>
 <%} %>
</body>
</html>
