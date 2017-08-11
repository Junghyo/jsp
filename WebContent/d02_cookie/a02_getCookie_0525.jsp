<!-- 
 # 쿠키값 가져오기
 1) 쿠키를 생성하면 웹브라우저에 저장되어 있기에
 	다음에 서버에 접속할 때 쿠키값을 전달해서 해당 쿠키를 사용할 수 있다.
 	
 2) 기본형식
 	- Cookie[] cookies = request.getCookies();
	- 클라이언트 단에서 온 쿠키를 확인
	- for(Cookie c : cookies){
		c.getName() : 쿠키 이름 가져오기
		c.getValue() : 쿠키 값 가져오기
	 }

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

<body>
	<%
	Cookie[] cookies = request.getCookies();	
	if(cookies!=null && cookies.length>0){
		for(Cookie c: cookies){
			if(!c.getName().equals("JSESSIONID")){
				System.out.println(c.getName()+" : "+URLDecoder.decode(c.getValue(),"UTF-8"));
	%>
				<h1>쿠키이름: <%=c.getName() %>, 쿠키값: <%=URLDecoder.decode(c.getValue(),"UTF-8") %></h1>
	<%		}
		}
	}%>
</body>
</html>