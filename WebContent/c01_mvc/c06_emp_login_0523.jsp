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

	});
		var ename = "${ename}";
		if(ename!=""){
			alert(ename+"님은 인증되지 않은 회원입니다.\n사원명과 사원번호를 다시 확인하세요");
		}
</script>
<style type="text/css">

</style>
</head>
<body>
	<h1>VISION 솔루션에 오신 것을 환영합니다.</h1>
	<h2>사원명과 사번을 입력하세요!</h2>
	<form>
		<table>
			<tr>
				<th>사원명</th><th><input name="ename"></th>
				<th>사원번호</th><th><input name="empno"></th>
				<th><button type="submit">로그인</button></th>
			</tr>
		</table>
	</form>
</body>
</html>