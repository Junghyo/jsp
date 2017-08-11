<!--  
 # 요청흐름제어
 1) 웹 서비스에서 화면 처리에 공통과 개별 부분 또한 조건에 따라
 	다른 page를 처리할 때가 있다. 이 때 활용되는 부분이 흐름제어 jsp모듈이다.
 	
 2) tot.jsp ==> top.jsp, left.jsp, right.jsp
 
 
 # 페이지 모듈화 사용법
 1) jsp:include page="포함될페이지" flush="true"/
 
 2) 요청값 전달 및 받기
 	- jsp:include page="top.jsp"
 	  jsp:param name="param01" value="data01"
	
	- top.jsp
	  $ {param.param01} ==> data01
-->
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
</script>
<style type="text/css">

</style>
</head>
<body>
	<table style="width:700pt; height:500pt" border=1>
		<tr>
			<td colspan="2" style="height:20%;">
				<jsp:include page="/include?part=top">
					<jsp:param name="id" value="himan"/>
				</jsp:include>
			</td>
		</tr>
		<tr>
			<td style="width:20%;">
				<jsp:include page="/include?part=left">
					<jsp:param value="전자제품" name="menu"/>
					<jsp:param value="도서" name="menu"/>
					<jsp:param value="식품" name="menu"/>
				</jsp:include>
			</td>
			<td style="width:80%;">
				<jsp:include page="/include?part=main"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>
