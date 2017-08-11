<!-- 
 # 이동 액션 태그 사용법
 1) jsp:forward page="이동할 페이지"/
 	- 특정페이지로 조건에 따라 이동처리
 

 -->
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
<!-- 
 해당 page로 바로 이동 처리
 ?page=a ==> a21_gopage_0524.jsp
 그외는 a22_gopage_0524.jsp

 -->
	<c:choose>
		<c:when test="${param.page=='a' }">
			<jsp:forward page="a21_gopage_0524.jsp">
				<jsp:param value="himan" name="call"/>
			</jsp:forward>
		</c:when>
		<c:otherwise>
			<jsp:forward page="a22_gopage_0524.jsp">
				<jsp:param value="messi" name="call"/>
			</jsp:forward>
		</c:otherwise>
	</c:choose>
</body>
</html>