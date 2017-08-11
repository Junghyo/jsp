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
<%
	A05_QuizBankDB_0511 dao = new A05_QuizBankDB_0511();
	Quizbank dto = new Quizbank();
	dto.setJque(request.getParameter("que"));
	dto.setJcoransw(request.getParameter("coransw"));
%>
<body>
	<c:set var="queList" value="<%=dao.search(dto) %>"/>
	<table border=1>
		<tr>
			<th colspan="4">데이터건수 : ${queList.size() }</th>
		</tr>
		<tr>
			<th>번호</th>
			<th>문제</th>
			<th>정답</th>
			<th>문제type</th>
		</tr>
		<c:forEach var="que" items="${queList }">
			<tr>
				<th>${que.jno }</th>
				<th>${que.jque }</th>
				<th>${que.jcoransw }</th>
				<th>${que.jqueType }</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
