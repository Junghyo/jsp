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
	<table border=1>
		<tr>
			<th colspan="8">
				<c:forEach var="c" items="${ckList }" varStatus="sts">
					${c.value }<c:if test="${!sts.last }">,</c:if>
				</c:forEach>
			</th>
		</tr>
		<tr>
			<th>A</th><th>${aCnt }</th>
			<th>B</th><th>${bCnt }</th>
			<th>C</th><th>${cCnt }</th>
			<th>total</th><th>${aCnt+bCnt+cCnt }</th>
		</tr>
	</table>
	<a href="${path }/save">SAVE ALPHABET</a>
	<a href="${path }/wordList?ctrl=del">DELETE COOKIES</a>
</body>
</html>