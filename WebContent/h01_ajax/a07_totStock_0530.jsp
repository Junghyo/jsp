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
	<h1>물품명: ${param.prod }</h1>
	<c:choose>
		<c:when test="${param.prod=='사과' }">
			<h2>${param.prod }의 재고량은 5개입니다.</h2>
		</c:when>
		<c:when test="${param.prod=='바나나' }">
			<h2>${param.prod }의 재고량은 6개입니다.</h2>
		</c:when>
		<c:otherwise>
			<h2>${param.prod }는 재고량이 없습니다.</h2>
		</c:otherwise>		
	</c:choose>
</body>
</html>