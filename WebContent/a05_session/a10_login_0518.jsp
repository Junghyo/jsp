<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h2 align="center">로그인 화면</h2>
	<form method="post" action="a11_proc_0518.jsp">
		<input type="hidden" name="proc" value="login">
		<table style="margin:auto;">
			<tr>
				<th>ID</th><th><input name="id"></th>
			</tr>
			<tr>
				<th>PASSWORD</th><th><input name="pwd"></th>
			</tr>
			<tr>
				<th colspan="2" align="center"><input type="submit" value="로그인"></th>
			</tr>
		</table>
	</form>
</body>
</html>