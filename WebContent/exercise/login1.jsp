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
		$("input[type=button]").click(function(){
			var id = $("input[name=id]").val();
			var pwd = $("input[name=pwd]").val();
			var sendData = "id="+id+"&pwd="+pwd;
			$.ajax({
				url:"login2.jsp",
				type:"post",
				dataType:"html",
				data:sendData,
				success:function(mem){
					$("#show").html(mem);
				}
				
			})
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	ID: <input name="id"><br>
	PASSWORD: <input type="password" name="pwd"><br>
	<input type="button" value="로그인">
	<div id="show"></div>
</body>
</html>