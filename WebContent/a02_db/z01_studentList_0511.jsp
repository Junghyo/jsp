<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.A04_StudentDB_0511"
    import="z02_vo.Student_0511, java.util.*"
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
*{margin:auto;}
</style>
</head>
<% 
	A04_StudentDB_0511 db = new A04_StudentDB_0511();
%>
<body>
	<table border=1>
		<tr>
			<th>이름</th>
			<th>학년</th>
			<th>반</th>
			<th>국어성적</th>
			<th>영어성적</th>
			<th>수학성적</th>
		</tr>
		<%for(Student_0511 st : db.stList()){ %>
		<tr>
			<td><%=st.getJname() %></td>
			<td><%=st.getJgrade() %></td>
			<td><%=st.getJclass() %></td>
			<td><%=st.getJkor() %></td>
			<td><%=st.getJeng() %></td>
			<td><%=st.getJmath() %></td>
		<%} %>
		</tr>
	</table>
</body>
</html>