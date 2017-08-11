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
 확인예제(온라인영화관)
 1. 초기화면
  - id, 초기포인트설정(1000)
 2. 영화1
  - 포인트가 차감(200) 포인트가 200이하일때 포인트가 필요합니다 충전page로 이동
  
 3. 영화2
  -포인트 차감(300) 포인트가 300 이하일때 충전page 이동
  
 4. 충전페이지 2000

 -->
	<jsp:useBean id="mem" class="z02_vo.Members" scope="session"></jsp:useBean>
	<jsp:setProperty property="jid" name="mem" value="Rooney"/>
	<jsp:setProperty property="jpoint" name="mem" value="1000"/>
	<h1>영화구매</h1>
	<h2>아이디: ${mem.jid }</h2>
	<h2>포인트: ${mem.jpoint }</h2>
	<h2>페이지이동</h2>
		<ul>
			<li><a href="a07_movie1_0529.jsp">영화1</a></li>
			<li><a href="a07_movie2_0529.jsp">영화2</a></li>
		</ul>
</body>
</html>
