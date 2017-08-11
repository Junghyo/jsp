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
		$("input").keyup(function(){
			var que = $("input[name=que]").val();
			var coransw = $("input[name=coransw]").val();
			var sendData="que="+que+"&coransw="+coransw;
			$.ajax({
				url:"a11_queList_0530.jsp",
				type:"post",
				dataType:"text",
				data:sendData,
				success:function(queList){
					$("#show").html(queList);
				}
			})
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<table>
		<tr>
			<th>문제</th>
			<th><input name="que"/></th>
		</tr>
		<tr>
			<th>정답</th>
			<th><input name="coransw"/></th>
		</tr>		
	</table>
	<div id="show"></div>
</body>
</html>