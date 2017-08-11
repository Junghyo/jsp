<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.A06_StudentDB_0511"
    import="z02_vo.Student_0511, java.util.ArrayList"
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

	});
</script>
<style type="text/css">
	*{margin:auto; text-align:center;}
	table{border-collapse: collapse;}
</style>
</head>
<%
	A06_StudentDB_0511 db = new A06_StudentDB_0511();
	Student_0511 sch = new Student_0511();
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	
	if(name!=null && !name.trim().equals("")){
		sch.setJname(name);
	}else{
		sch.setJname("");
	}
	if(grade!=null && !grade.trim().equals("")){
		sch.setJgrade(grade);
	}else{
		sch.setJgrade("");
	}

	
%>
<body>

	<form method="post">
		이름: <input name="name" value="<%=sch.getJname()%>">
		학년: 
		<select name="grade" value="<%= sch.getJgrade()%>">
			<option value=""></option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
		</select>
		<button type="submit">검색</button><br>
	</form><br><br>
	<table border=1>
		<tr>
			<th>NAME</th>
			<th>GRADE</th>
			<th>CLASS</th>
			<th>KOR SCORE</th>
			<th>ENG SCORE</th>
			<th>MATH SCORE</th>
		</tr>
		<%for(Student_0511 st : db.searchPre(sch)){ %>
		<tr>
			<td><%=st.getJname() %></td>
			<td><%=st.getJgrade() %></td>
			<td><%=st.getJclass() %></td>
			<td><%=st.getJkor() %></td>
			<td><%=st.getJeng() %></td>
			<td><%=st.getJmath() %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>