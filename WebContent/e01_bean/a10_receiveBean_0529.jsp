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
	<jsp:useBean id="mb" class="z02_vo.MemberBean" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="mb"/>
	<!-- 입력에 name과 매칭되는 setXXX메서드가 있으면 다 입력처리 -->
	<h1>입력한 id: ${mb.id }</h1>
	<h1>입력한 password: ${mb.pwd }</h1>
	<h1>입력한 이름: ${mb.name }</h1>
	<h1>입력한 주소: ${mb.address }</h1>
	<h1>입력한 날짜: ${mb.registerDate }</h1>
	<h1>입력한 mail: ${mb.email }</h1>
	
</body>
</html>