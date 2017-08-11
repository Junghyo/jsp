<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
    import="java.net.*"
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
	<h2>장바구니 목록</h2>
	<table border=1>
		<tr>
			<td colspan="8">
				<c:forEach var="c" items="${ckList }" varStatus="sts">
					${c.value }<c:if test="${!sts.last }">,</c:if>
				</c:forEach>
			</td>
		</tr>
		<tr>
			<td>사과</td><td>${appleCnt }</td>
			<td>바나나</td><td>${bananaCnt }</td>
			<td>딸기</td><td>${strawberryCnt }</td>
			<td>총계</td><td>${appleCnt+bananaCnt+strawberryCnt }</td>
		</tr>		
	</table>
	<a href="${path}/shop">쇼핑 계속</a>
	<a href="${path}/prodList?ctrl=del">장바구니 삭제</a>
</body>
</html>