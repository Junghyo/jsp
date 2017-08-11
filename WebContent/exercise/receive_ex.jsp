<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	String []abc=request.getParameterValues("word");
%>
<body>
	<%for(String a : abc){%>
		<h2><%=a%></h2>
	<%}%>
	<table border=1>
		<%for(int i=0; i<2; i++){ %>
			<tr>
			<%for(int j=0; j<abc.length/3; j++){ %>
				<th><%=abc[j*3] %></th><th><%=abc[j*3+1] %></th><th><%=abc[j*3+2] %></th>
			<%} %>
			</tr>
		<%} %>			
	</table>
	
	<table border=1>
		<%for(int j=0; j<abc.length/3; j++){ %>
				<tr><th><%=abc[j*3] %></th><th><%=abc[j*3+1] %></th><th><%=abc[j*3+2] %></th></tr>
			<%} %>
	</table>
</body>
</html>