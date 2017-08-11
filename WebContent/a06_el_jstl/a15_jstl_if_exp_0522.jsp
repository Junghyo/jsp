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
		$("select[name=selecVal]").val("${param.selecVal}");
		$("select[name=selecVal]").change(function(){
			$("form").submit();
		})
	});
</script>
<style type="text/css">

</style>
</head>

<body>
<!-- 
 # 확인예제.
 1단계
 - 다음 문제의 정답을 선택하세요.
 - 4+5= [select 0~9]
 ====> 정답입니다/오답입니다.
 
 2단계
 - 화면의 배경색상을 선택하세요.
 - 배경색상 선택: [select(빨/주/노/초/파/남/보)]
 -->
 	<h2>다음 문제의 정답을 선택하세요.</h2>
 	<form method="post">
 		4+5=
 		<select id="selecVal" name="selecVal">
 			<option>0</option>
 			<option>1</option>
 			<option>2</option>
 			<option>3</option>
 			<option>4</option>
 			<option>5</option>
 			<option>6</option>
 			<option>7</option>
 			<option>8</option>
 			<option>9</option>
 		</select>
 	</form>
 	<c:if test="${not empty param.selecVal }">
	 	<c:if test="${param.selecVal eq (4+5) }">
	 		<h2>정답입니다.</h2> 	
	 	</c:if>
	 	<c:if test="${param.selecVal ne (4+5) }">
	 		<h2>오답입니다.</h2>
	 	</c:if>
 	</c:if>


</body>
</html>