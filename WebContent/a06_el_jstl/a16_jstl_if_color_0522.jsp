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
		$("select[name=selColr]").val("${param.selColr}");
		$("body").css("background", "${param.selColr}");
		$("select[name=selColr]").change(function(){
			$("form").submit();
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	 	<h2>화면의 배경색상을 선택하세요</h2>
 	<form>
 		<select id="selColr" name="selColr">
 			<option>red</option>
 			<option>orange</option>	
 			<option>yellow</option>	
 			<option>green</option>	
 			<option>blue</option>	
 			<option>navy</option>	
 			<option>purple</option>	
 		</select>
 	</form>
</body>
</html>