<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jsp.a01_basic.Woman_0427"
    %>
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

</style>
</head>
<%
	Woman_0427 w = new Woman_0427("김태희", 31, "서울");
%>
<body>
	<h1 align="center">인적 사항!!</h1>
	<table align="center" border=1>
		<tr><td>이름</td><td><%=w.getName()%></td></tr>
		<tr><td>나이</td><td><%=w.getAge()%></td></tr>
		<tr><td>어디?</td><td><%=w.getLoc()%></td></tr>
	</table>
</body>
</html>
