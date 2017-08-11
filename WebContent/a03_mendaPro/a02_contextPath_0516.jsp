<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path %>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 request.getContextPath() : jsp 페이지와 servlet(서블릿)이 포함되어 있는 웹 어플리케이션 경로를 읽을 수 있다. 
 웹 어플리케이션 경로 : 매핑된 프로젝트명
*/
/*
 # TOC
 - 기본객체
 - out 기본객체
 - pageContext 기본객체
 - application 기본객체
 - jsp 기본객체와 영역
 - 속성
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h1>웹 어플리케이션 컨텍스트명: <%=path %></h1>
</body>
</html>