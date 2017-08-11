<!-- 
 # session bean 설정
 1) jsp:useBean scope="session
  - scope범위를 변경하여 해당 bean 내용이 page가 변경이 되더라도 가지고 다니면서 사용할 수 있다.

 2) 예제(z02_vo.Members)
  - 해당 session bean을 설정하여 이름과 point를 가지고 auth 내용도 다른 page에서 활용할 수 있는지 확인 
  [초기페이지]		[관리자page]		[구매page]
  session bean      bean 권한		bean point로 구매 및 변경
  초기값 설정            확인 접속여부
  페이지 이동            check
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
	<jsp:useBean id="mem" class="z02_vo.Members" scope="session"></jsp:useBean>
	<jsp:setProperty property="jid" name="mem" value="ttl"/>
	<jsp:setProperty property="jpwd" name="mem" value="7777"/>
	<jsp:setProperty property="jname" name="mem" value="Neymar"/>
	<jsp:setProperty property="jpoint" name="mem" value="1000"/>
	<jsp:setProperty property="jauthor" name="mem" value="admin"/>
	<h1>초기 session 설정 page</h1>
<!-- jsp:getProperty는 el tag로 mem.property명으로 가져올 수 있다. -->
	<h2>이름 : ${mem.jname }</h2>
	<h2>포인트 : ${mem.jpoint }</h2>
	<h2>권한 : ${mem.jauthor }</h2>
	<h1>페이지 이동</h1>
	<ul>
		<li><a href="a04_admin_0529.jsp">관리자 페이지</a></li>
		<li><a href="a05_buy_0529.jsp">구매 페이지</a></li>
		<li><a href="a06_author_0529.jsp">권한변경 페이지</a></li>
	</ul>
</body>
</html>