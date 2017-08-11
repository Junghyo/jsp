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
<!-- 
 # 확인예제
 1단계
 10~50까지 숫자를 5단위로 증가시키고 테이블 형식의 화면에 출력하세요.
 10	 15	 20	 25	 30	....

 2단계
 테이블 만들기
 입력화면 : 데이터범위 : 시작번호[]	마지막번호[]	간격[]
 테이블:	행[]	열[]	생성
-->
	<table border=1>
		<tr>
			<c:forEach var="num" begin="10" end="50" step="5">
				<th>${num }</th>
			</c:forEach>
		</tr>
	</table>
	
	<form>
		<h2>데이터 범위</h2>
			시작번호:<input type="number" name="begin" value="${param.begin }">
			마지막번호:<input type="number" name="end" value="${param.end }">
			간격:<input type="number" name="step" value="${param.step }">
		<h2>테이블</h2>
			행:<input type="number" name="col">
			열:<input type="number" name="row">
			<button type="submit">생성</button>
	</form>
	<c:set var="cnt" value="${param.begin+0 }"/>
	<table border=1>
		<c:forEach var="col" begin="1" end="${param.col }" step="1">
			<tr>
			<c:forEach var="row" begin="1" end="${param.row }" step="1">
				<th>
					<c:if test="${cnt<=param.end }">
						${cnt }
						<c:set var="cnt" value="${cnt+param.step }"/>
					</c:if>	
				</th>
			</c:forEach>
			<tr>
		</c:forEach>
	</table>
</body>
</html>
