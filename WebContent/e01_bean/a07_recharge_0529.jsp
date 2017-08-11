<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<fmt:requestEncoding value="UTF-8"/> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${path}/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">
</style>
</head>
<body>
	<h1>포인트 충전 page </h1>
	<h2>현재 포인트:${mem.jpoint }</h2>
	<jsp:setProperty property="jpoint" name="mem" value="${mem.jpoint+2000 }"/>
	<h2>충전후 포인트:${mem.jpoint }</h2>
			<h2>페이지이동</h2>
		<ul>
			<li><a href="a07_main_0529.jsp">메인페이지</a></li>
			<li><a href="a07_movie1_0529.jsp">영화1</a></li>
			<li><a href="a07_movie2_0529.jsp">영화2</a></li>
		</ul>
</body>
</html>