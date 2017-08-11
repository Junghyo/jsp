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
		$("button").click(function(){
			$("#alphabet").val($(this).attr("id"));
			$("form").submit();
		})
		$("#check").click(function(){
			$(location).attr("href", "${path}/wordList");
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<form>
		<input type="hidden" name="alphabet" id="alphabet">
		<ul>
			<li>A <button id="A">SAVE</button></li>
			<li>B <button id="B">SAVE</button></li>
			<li>C <button id="C">SAVE</button></li>
		</ul>
		<input type="button" id="check" value="CHECK BASKET">
	</form>
</body>
</html>