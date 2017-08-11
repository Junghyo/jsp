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
//		선택했을 때 전송
		$("#selAuth").change(function(){
			alert("권한: "+$(this).val());
			$("form").submit();
		});
//		전송되어 온 값을 setting 처리
		var auth="${param.selAuth}";
		if(auth!="")$("#selAuth").val("${param.selAuth}");
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<form method="post">
		<select id="selAuth" name="selAuth">
			<option>admin</option>
			<option>user01</option>
			<option>user02</option>
			<option>guest</option>
		</select>
	</form>
	<c:if test="${param.selAuth eq 'admin' }">어서오세요. 관리자 page입니다.</c:if>
	<c:if test="${param.selAuth eq 'user01' }">어서오세요. 사용자 page입니다.</c:if>
	<c:if test="${param.selAuth eq 'user02' }">어서오세요. 사용자 page입니다.</c:if>
	<c:if test="${param.selAuth eq 'guest' }">어서오세요. 손님 page입니다.</c:if>
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
</body>
</html>