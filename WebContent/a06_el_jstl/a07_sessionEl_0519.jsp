<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*"
    import="z02_vo.*"
    %>
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

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	MembersDAO dao = new MembersDAO();
	Members dto = new Members();
	dto.setJid(id);
	dto.setJpwd(pwd);
	Members vo = dao.memInfo(dto);

	session.setAttribute("user", vo);
%>
<body>
	<h2>${user.jname }님 환영합니다.</h2>
	<h2>당신의 아이디는 ${user.jid }, 비밀번호는 ${user.jpwd }입니다.</h2>
</body>
</html>
