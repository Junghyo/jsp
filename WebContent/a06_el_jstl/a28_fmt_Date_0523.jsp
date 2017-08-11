<!-- 
 1) fmt:formatDate 속성="속성값"
 	- value : 날짜 및 시간
 	- type : 날짜, 시간, 또는 둘다. ex) time, date, both
 	- dateStyle : 정의 포맷팅 스타일  ex) default, short, medium, long, full
 	- timeStyle : 정의된 시간 포맷팅 ex) default, short, medium, long, full
 	- pattern : 사용자 정의 패턴으로 날짜와 시간 표시
 	- timeZone, var, scope
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
<!-- 오늘 날짜 지정 -->
	<c:set var="now" value="<%=new Date() %>"></c:set>
	<h2>날짜형식</h2>
	default형식 : <fmt:formatDate value="${now }" /><br>
	full형식 : <fmt:formatDate value="${now }" type="date" dateStyle="full"/><br>
	short형식 : <fmt:formatDate value="${now }" type="date" dateStyle="short"/><br>
	medium형식 : <fmt:formatDate value="${now }" dateStyle="long"/>
	<h2>시간</h2>
	default형식 : <fmt:formatDate value="${now }" type="time"/><br>
	both형식: <fmt:formatDate value="${now }" type="both"/><br>
	both, full형식 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br>
	long 형식 : <fmt:formatDate value="${now }" type="time" timeStyle="long"/>
	<h2>패턴형식</h2>
	<fmt:formatDate value="${now }" pattern="yyyy/MM/dd a h:mm:ss"/>
</body>
</html>