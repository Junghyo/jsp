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
	<jsp:setProperty property="jauthor" name="mem" value="user01"/>
	<h1>구매 page1(포인트차감)</h1>
	<h2>이름 : ${mem.jname }</h2>
	<h2>포인트 : ${mem.jpoint }</h2>
	<h2>권한 : ${mem.jauthor }</h2>
	<h1>페이지 이동</h1>
		<ul>
			<li><a href="a03_initBean_0529.jsp">초기 페이지</a></li>
			<li><a href="a04_admin_0529.jsp">관리자 페이지</a></li>
			<li><a href="a05_buy_0529.jsp">구매 페이지</a></li>
		</ul>
</body>
</html>