<!-- 
  # 쿠키의 도메인
  1) 쿠키는 그 쿠키를 생성한 서버에만 전송
  2) setDomain() : 생성된 쿠키가 전송될 수 있는 도메인을 지정
  	- goodproduct.com : .goodproduct.com가 포함된 모든 도메인 쿠키를 전송
  	- www.goodjob.com : 하나의 특정 도메인에 대해서만 쿠키를 전송
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
<%
	Cookie cookie1 = new Cookie("cookie1", "Numb01");
	cookie1.setDomain(".some.com");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("cookie2", "Numb02");
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("cookie3", "Numb03");
	cookie3.setDomain("himan.some.com");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("cookie4", "Numb04");
	cookie4.setDomain("good.job.com");
	response.addCookie(cookie4);
	
	Cookie[] cookies = request.getCookies();
%>
<body>
	<h1>쿠키값 및 도메인 설정내용</h1>
	<%if(cookies!=null && cookies.length>0){
		for(Cookie c : cookies){
			if(!c.getName().equals("JSESSIONID")){
	%>
				<h1>이름:<%=c.getName() %>, 값:<%=c.getValue() %>, 도메인: <%=c.getDomain() %></h1>
	<%		}
		} 
	}
	%>
	<h1>쿠키값 및 도메인 설정내용</h1>
	<h1>이름:<%=cookie1.getName() %>, 값:<%=cookie1.getValue() %>, 도메인: <%=cookie1.getDomain() %></h1>
	<h1>이름:<%=cookie2.getName() %>, 값:<%=cookie2.getValue() %>, 도메인: <%=cookie2.getDomain() %></h1>
	<h1>이름:<%=cookie3.getName() %>, 값:<%=cookie3.getValue() %>, 도메인: <%=cookie3.getDomain() %></h1>
	<h1>이름:<%=cookie4.getName() %>, 값:<%=cookie4.getValue() %>, 도메인: <%=cookie4.getDomain() %></h1>
</body>
</html>
