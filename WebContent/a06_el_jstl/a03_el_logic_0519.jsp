<!--
# 비교 연산자 처리
- $ {값1 == 값2} ==> $ {값1 eq 값2}
- $ {값1 != 값2} ==> $ {값1 ne 값2} (not equal)
- $ {값1 < 값2}  ==> $ {값1 lt 값2} (less than)
- $ {값1 > 값2}  ==> $ {값1 gt 값2} (greater than)
- $ {값1 >= 값2} ==> $ {값1 le 값2}
- $ {값1 <= 값2} ==> $ {값1 ge 값2}
- 요청값 ""(공백) null에 대한 처리
- $ { empty 값 } : 공백, null일 때 true
- $ { not empty 값 } : 공백, null 아닐 때 true
- $ { 조건1 && 조건2 } ==> $ { 조건1 and 조건2 }
- $ { !조건1 } ==> $ { not 조건1 }
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>
</head>
<%
	int ranNum01 = (int)(Math.random()*9+1);
	int ranNum02 = (int)(Math.random()*9+1);
%>
<body>
	<h2>수학 게임</h2>
	<form method="post">
		<input name="num01" type="number" value="<%=ranNum01 %>" size="1">*
		<input name="num02" value="<%=ranNum02 %>" size="1">=
		<input name="result" value="" size="2">
		<button>확인</button>
	</form>
	정답여부: ${param.num01 * param.num02 eq param.result }
</body>
</html>
