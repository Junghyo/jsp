<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, java.util.*"
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
		$("input").keyup(function(){
			if(event.keyCode==13) $("form").submit();
		})
	});
</script>
<style type="text/css">

</style>
</head>
<%
	Emp sch = new Emp();
	sch.setJename(request.getParameter("ename")!=null?request.getParameter("ename"):"");
	sch.setJjob(request.getParameter("job")!=null?request.getParameter("job"):"");
	ArrayList<Emp> search = new A01_EmpDB_0510().searchPre(sch);
	request.setAttribute("emp", search);
%>
<body>
	<form method="post">
		이름:<input name="ename" value="${param.ename }">
		직책:<input name="job" value="${param.job }">
	</form>
	<table>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>직책</th>
			<th>관리자번호</th>
			<th>입사일</th>
			<th>연봉</th>
			<th>급여</th>
			<th>부서번호</th>
		</tr>
		<c:forEach var="search" items="${emp }">
			<tr>
				<th>${search.jempno }</th>
				<th>${search.jename }</th>
				<th>${search.jjob }</th>
				<th>${search.jmgr }</th>
				<th>${search.jhiredate }</th>
				<th>${search.jsal }</th>
				<th>${search.jcomm }</th>
				<th>${search.jdeptno }</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
