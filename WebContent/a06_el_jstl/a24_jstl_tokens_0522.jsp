<!-- 
 # c:forTokens
 1) 속성
 	- var : 단위 데이터
 	- items : 구분자를 포함한 데이터
 	- delims : 구분자 	
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
	<c:forTokens var="color" items="red,green,blue" delims=",">
		<h1>${color }</h1>
	</c:forTokens>
</body>
</html>
<!-- 
 # 자원포함 처리 태그
 1) 내부/외부 자원의 삽입(c:import), url 생성(c:url), 리다이렉트(c:redirect)를 통해
     간결한 코드로 한 페이지내의 여러 자원을 활용할 수 있다.
   
 2) c:import 속성="속성값"
 	- url : 내부/외부 자원 호출
 	ex) url="top.jsp", url="http://www.naver.com"
 	- var : 변수명 지정
 	- scope : 영역
 -->