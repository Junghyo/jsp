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
			var name = $("input[name=username]").val();
			var password = $("input[name=password]").val();
			alert(name+" : "+password);
			var sendData = "username="+name+"&password="+password;
			$.ajax({
				type:"post",
				url:"a05_loginCheck_0530.jsp",
				data:sendData,
				dataType:"text",
				success:function(msg){
					$("#msg").html(msg);
				}
			})
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<form>
		이름 : <input name="username"/><br>
		패스워드: <input type="password" name="password"/><br>
		<input type="button" value="확인"/>
	</form>
	<div id="msg"></div>
</body>
</html>