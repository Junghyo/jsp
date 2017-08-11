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
	MembersDAO dao = new MembersDAO();
	Members dto = new Members();
	dto.setJid(request.getParameter("id"));
	dto.setJpwd(request.getParameter("pwd"));
%>
<body>
	<c:set var="mem" value="<%=dao.memInfo(dto) %>"/>
	<c:choose>
		<c:when test="${mem==null }">
			없는 계정입니다.
		</c:when>
		<c:otherwise>
			${mem.jname }님 환영합니다.
		</c:otherwise>
	</c:choose>
</body>
</html>