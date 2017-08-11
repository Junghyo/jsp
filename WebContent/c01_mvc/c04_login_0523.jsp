<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<fmt:requestEncoding value="UTF-8"/> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${path}/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
	var id="${id}";
	if(id!=""){
		alert(id+"계정은 유효한 계정이 아닙니다.\nid와 password를 확인하세요.");
	}
</script>
<style type="text/css">
body{text-align:center;}
table{margin:auto;}
input{width:100px;}
</style>
</head>
<body>
	<h1>로그인page</h1>
	<form>
		<table>
			<tr>
				<th>ID</th><th><input name="id"></th>
				<th>PASSWORD</th><th><input type="password" name="pwd"></th>
				<th><button type="submit">로그인</button></th>
			</tr>
		</table>
	</form>
</body>
</html>