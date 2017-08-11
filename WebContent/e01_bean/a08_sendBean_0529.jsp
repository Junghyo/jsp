<!-- 
 # 요청 값으로 bean 처리하기
 요청 값에 id=@@@가 있고 받은 page에서 useBean으로 정의된 클래스에 setId가 있으면 값을 저장하게 된다.
 [client] 							[Server]
 input name="id"		====>		Bean을 통한 요청값 내용 처리하기
 									request.getParameter("id");
 									setId();
 									
 									jsp:setProperty property="id"
 									위 기능을 동시에 처리함
 									
 - jsp:setProperty property="*" name=""
    입력한 값 중에 해당 bean객체에 setXXX가 있으면 전부 입력처리									

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
	<form method="post" action="a10_receiveBean_0529.jsp">
		아이디: <input name="id"><br>
		패스워드: <input type="password" name="pwd"><br>
		이름: <input name="name"><br>
		주소: <input name="address"><br>
		날짜: <input type="date" name="registerDate"><br>
		이메일: <input type="email" name="email"><br>
		<button type="submit">로그인</button>
	</form>
<!-- 
 jsp:useBean에 해당클래스의 메서드명이 setId()가 있으면 request.getParameter() 없이 그대로 받을 수가 있다.
 -->
</body>
</html>