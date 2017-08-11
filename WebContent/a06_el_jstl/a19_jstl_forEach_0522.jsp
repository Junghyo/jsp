<!-- 
 # c:forEach 반복문
 1) c:forEach
 	- var : 반복문 안에서 활용된 단위 변수나 객체
 	- begin : 시작 번호
 	- end : 마지막 번호
 	- step : 증감 단위

 -->
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

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<table border=1>
		<c:forEach var="cnt" begin="1" end="100" step="1">
			<tr>
				<td width="200pt" align="center">${cnt }</td>
			</tr>
			<c:set var="tot" value="${tot+cnt }"/>
		</c:forEach>
	</table>
	<h2>전체합계:${tot }</h2>
</body>
</html>
<!-- 
 # 확인예제
 1단계
 10~50까지 숫자를 5단위로 증가시키고 테이블 형식의 화면에 출력하세요.
 10	 15	 20	 25	 30	....
 -->