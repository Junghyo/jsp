<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*"
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

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String cnt = request.getParameter("cnt");
	Products p = new Products();
	p.setName(name);
	p.setPrice(new Integer(price));
	p.setCnt(new Integer(cnt));
	session.setAttribute("product", p);
	response.sendRedirect("a04_homework1_jstl_0519.jsp");
%>
<body>

</body>
</html>