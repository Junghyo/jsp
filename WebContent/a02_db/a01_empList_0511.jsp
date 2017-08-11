<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.A01_EmpDB_0510"
    import="z02_vo.Emp, java.util.*"
    %>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 # 웹화면에서 DB모듈 불러오기
 1) import 하기 : < %@ page
 	- DB 모듈 : import="z01_database.A01_EmpDB_0510"
 	- VO와 ArrayList : import="z02_vo.Emp_0511, java.util.*"
 
 2) < % %> 안에 선언
 
 3) for문을 table < % %>
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<% 
	A01_EmpDB_0510 db = new A01_EmpDB_0510();
%>
<body>
	<table border=1; style="border-collapse:collapse; margin:auto;">
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>직책</th>
			<th>관리자번호</th>
			<th>입사일</th>
			<th>연봉</th>
			<th>보너스</th>
			<th>부서번호</th>
		</tr>
		<!-- 데이터를 loop하면서 처리할 내용 -->
		<%for(Emp e : db.empList()){ %>
		<tr>
			<td><%=e.getJempno() %></td>
			<td><%=e.getJename() %></td>
			<td><%=e.getJjob() %></td>
			<td><%=e.getJmgr() %></td>
			<td><%=e.getjhiredate() %></td>
			<td><%=e.getJsal() %></td>
			<td><%=e.getJcomm() %></td>
			<td><%=e.getJdeptno() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>
