<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.A03_DeptDB_0511"
    import="z02_vo.Dept, java.util.*"
    %>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#moveBtn").click(function(){
			$(location).attr("href", "a02_insertDept_0515.jsp" );
		})
	});
</script>
<style type="text/css">
	table{margin:auto; border-collapse:collapse;}
</style>
</head>
<%
	A03_DeptDB_0511 db = new A03_DeptDB_0511();
	String deptno = request.getParameter("deptno");
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	Dept sch = new Dept();

	
	if(deptno!=null && !deptno.trim().equals("")){
		sch.setJdeptno(deptno);
	}else{
		sch.setJdeptno("");
	}
	if(dname!=null && !dname.trim().equals("")){
		sch.setJdname(dname);
	}else{
		sch.setJdname("");
	}
	if(loc!=null && !loc.trim().equals("")){
		sch.setJloc(loc);
	}else{
		sch.setJloc("");
	}
%>
<body>
	<form method="post">
		<table border=1>
			<tr>
				<th>부서번호</th>
				<th>
					<select	 name="deptno" value="<%=sch.getJdeptno() %>">
						<option></option>
						<option>10</option>
						<option>20</option>
						<option>30</option>
						<option>40</option>
					</select>
				</th>
				<th>부서명</th><th><input name="dname" value="<%=sch.getJdname() %>"></th>
				<th>부서위치</th>
				<th>
				<select name="loc" value="<%=sch.getJloc() %>">
					<option></option>
					<option>NEW YORK</option>
					<option>DALLAS</option>
					<option>CHICAGO</option>
					<option>BOSTON</option>
				</select>
				</th>
				<th><button type="submit">검색</button></th>
				<th><button id="moveBtn">추가</button></th>
			</tr>
		</table>
	</form><br><br>
	<table border=1>
		<tr>
			<th>부서번호</th>
			<th>부서명</th>
			<th>부서위치</th>
		</tr>
		<%for(Dept dt : db.searchPre(sch)){%>
		<tr>
			<td><%=dt.getJdeptno()%></td>
			<td><%=dt.getJdname() %></td>
			<td><%=dt.getJloc()%></td>
		</tr>
		<%}%>
	</table>
</body>
</html>