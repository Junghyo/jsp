<!--  
 # 쿠키값 변경 삭제
 1) 쿠키는 해당 값을 검색해서 재 등록함으로 쿠키값을 변경처리할 수 있다.
 	- if(cookie.getName().equals("name")){
   		Cookie cookie = new Cookie(name, value);
   		response.addCookie(cookie);
   }
 
 2) 쿠키삭제
 	- setMaxAge(0) : 쿠키의 주기를 0으로 설정 후, 할당.


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
<%
	Cookie uptCookie = null;
	Cookie[] cookies = request.getCookies();
	if(cookies!=null && cookies.length>0){
		for(Cookie c : cookies){
			if(!c.getName().equals("JSESSIONID")){
				uptCookie = new Cookie("name1", "uptValue");
				response.addCookie(uptCookie);
			}
			if(!c.getName().equals("name2")){
				uptCookie = new Cookie("name2", "delCookie");
				uptCookie.setMaxAge(0);
				response.addCookie(uptCookie);
			}
		}
	}

%>
</body>
</html>