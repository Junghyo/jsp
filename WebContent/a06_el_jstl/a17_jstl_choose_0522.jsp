<!-- 
 # c:choose 조건선택
 1) switch문과 if=else문의 혼합된 형태로 c:if에서 else 구문을 지원하지 않기에
     처리하는 형태를 말한다.
 
 2) 형식
 	- c:choose
 		c:when test="$ {조건문1}"처리할 화면
 		c:when test="$ {조건문1을 제외한 조건문2}"처리할 화면
 		c:otherwise> 위의 조건을 제외한 나머지에 대한 처리할 화면
 	  /c:choose 

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*"
    import="z02_vo.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h1>학점 등급 확인</h1>
	<form method="post">
		점수를 입력하세요.<input type="number" name="point">
		<button type="submit">등급 확인</button>
	</form>
	<!--null이 아니거나 공백이 아닐때  -->
	<c:if test="${not empty param.point }">
		<c:choose>
			<c:when test="${param.point>=90 }">
				<h2>A등급</h2>
			</c:when>
			<c:when test="${param.point ge 80 }">
				<h2>B등급</h2>
			</c:when>
			<c:when test="${param.point ge 70 }">
				<h2>C등급</h2>
			</c:when>	
			<c:when test="${param.point ge 60 }">
				<h2>D등급</h2>
			</c:when>
			<c:otherwise>
				<h2>F등급</h2>
			</c:otherwise>										
		</c:choose>
	</c:if>
</body>
</html>

