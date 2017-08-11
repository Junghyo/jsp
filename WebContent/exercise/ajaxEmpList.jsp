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
	A01_EmpDB_0510 dao = new A01_EmpDB_0510();
	Emp dto = new Emp();
	dto.setJename(request.getParameter("ename").toUpperCase());
	dto.setJjob(request.getParameter("job").toUpperCase());
%>
<body>
	<c:set var="empList" value="<%=dao.searchPre(dto) %>"/>
	<table>
		<tr>
			<th>사원명</th>
			<th>사원번호</th>
			<th>직책</th>
			<th>입사일</th>
			<th>연봉</th>
			<th>보너스</th>
			<th>부서번호</th>
		</tr>
			<c:forEach var="emp" items="${empList }">
				<tr>
					<th>${emp.jename }</th>
					<th>${emp.jempno }</th>
					<th>${emp.jjob }</th>
					<th><fmt:formatDate value="${emp.jhiredate }" pattern="yyyy-MM-dd hh:mm:ss"/></th>
					<th>${emp.jsal }</th>
					<th>${emp.jcomm }</th>
					<th>${emp.jdeptno }</th>
				</tr>
			</c:forEach>
	</table>
</body>
</html>