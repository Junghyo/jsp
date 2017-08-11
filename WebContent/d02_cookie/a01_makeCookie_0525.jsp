<!--  
 # 쿠키
 1) 웹 브라우저(클라이언트)는 파라미터를 사용해 웹 서버에 정보 전달.
 2) 웹 서버가 웹 브라우저에 정보를 전달
 3) 브라우저단에 저장하여 서버와 정보를 주고받을 때, 해당 클라이언트 정보를
 	jsp 쿠키라는 저장 객체를 통해 저장한다.
 	
 [클라이언트]   ============> 	[서버]
  - 받은 쿠키	  <==쿠키전달===
  재접속시 	  ===쿠키전달===>


 # 쿠키의 구성 요소
 1) 이름
 	- 각각의 쿠키를 구별하는데 사용되는 이름
 2) 값
 	- 쿠키의 이름과 관련된 값
 3) 유효시간
 	- 쿠키를 유지하는 시간
 4) 도메인
 	- 쿠키를 전송할 도메인
 5) 경로
 	- 쿠키를 전송할 요청 경로
 	
 
 # 쿠키 생성
 1) 기본 형식
 	- Cookie cookie  = new Cookie("이름", "값");
 	- 값에는 문자열만 들어감(객체 X) : 1:1 매핑방식
 	- response.addCookie(cookie);
 	- cookie.getName() : 쿠키이름
 	- cookie.getValue() : 쿠키값
 
 2) 쿠키값의 한글처리
 	- URLEncode 클래스의 encode("쿠키값", "한글처리방식:UTF-8/EUC-KR")
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
    import="java.net.*"
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
<%
	Cookie cookie1 = new Cookie("name1", "Ronaldo");
	Cookie cookie2 = new Cookie("name2", URLEncoder.encode("메시", "UTF-8"));
	Cookie cookie3 = new Cookie("name3", URLEncoder.encode("루니", "UTF-8"));
	Cookie cookie4 = new Cookie("name4", "Neymar");
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
	response.addCookie(cookie4);
%>
<body>
	<h1>쿠키1 - 이름:<%=cookie1.getName() %>, 값:<%=cookie1.getValue() %></h1>
	<h1>쿠키2 - 이름:<%=cookie2.getName() %>, 값:<%=URLDecoder.decode(cookie2.getValue(), "UTF-8") %></h1>
</body>
</html>
