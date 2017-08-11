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
	div{height:200px; background:red;}
</style>
</head>
<%
	request.setAttribute("name", "호날두");
	pageContext.setAttribute("namePage", "짱짱맨");
%>
<body>
	<div>
	<h2>상단메뉴</h2>
	<h3>${name }님 환영합니다.</h3>
	<h3>${namePage }님 환영합니다. 범위가 page단위라 다른 page에서는 호출이 안됨.</h3>
	<h4>${param.num01 }+${param.num02 }=${param.num01+param.num02 }</h4>
	</div>
</body>
</html>