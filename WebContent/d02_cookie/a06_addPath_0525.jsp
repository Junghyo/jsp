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
	Cookie cookie01 = new Cookie("path01", "cookiePath01");
	cookie01.setPath("jsp_exp/d02_cookie");
	response.addCookie(cookie01);
	Cookie cookie02 = new Cookie("path02", "cookiePath02");
	cookie01.setPath("/");
	response.addCookie(cookie02);
	Cookie cookie03 = new Cookie("path03", "cookiePath03");
	cookie01.setPath("jsp_exp/d03_cookie");
	response.addCookie(cookie03);
	Cookie[] cookies = request.getCookies();

%>
<body>
	<h1>쿠키 생성 내용</h1>
	<%if(cookies!=null && cookies.length>0){
		for(Cookie c : cookies){
			if(!c.getName().equals("JSESSIONID")){
	%>
				<h2>이름: <%=c.getName() %>, 경로:<%=c.getPath() %></h2>
	<% 		}
		}
	 }%>
	 <h2>이름: <%=cookie01.getName() %>, 경로:<%=cookie01.getPath() %></h2>
	 <h2>이름: <%=cookie02.getName() %>, 경로:<%=cookie02.getPath() %></h2>
	 <h2>이름: <%=cookie03.getName() %>, 경로:<%=cookie03.getPath() %></h2>
</body>
</html>
