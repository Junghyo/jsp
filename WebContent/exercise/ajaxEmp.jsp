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
			var ename = $("input[name=ename]").val();
			var job = $("input[name=job]").val();
			var sendData="ename="+ename+"&job="+job;
			$.ajax({
				url:"ajaxEmpList.jsp",
				type:"post",
				dataType:"html",
				data:sendData,
				success:function(empList){
					$("div").html(empList);
				}
			})			
		})

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	사원명: <input name="ename"/><br>
	직책: <input name="job"/>
	<div>
	</div>
</body>
</html>