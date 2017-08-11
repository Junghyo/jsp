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
	String word = request.getParameter("wise");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	int numPass = Integer.parseInt(pass);
%>
<body>
	<h2>오늘의 명언 : <%=word %></h2>
	
	<%if(id.equals("himan") && numPass==7777 ){%>
		<h2><%=id %>님 환영합니다.</h2>
	<%}else{ %>
		<h2><%=id %>은 회원가입하세요.</h2>
	<% 
	}
	%>	
		
	
</body>
</html>