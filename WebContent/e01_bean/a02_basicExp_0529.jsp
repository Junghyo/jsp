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
<!-- 
 확인예제.
 VO단( bean 클래스)
  - computer
   cpu, ram, hdd
 useBean 활용
 cpu: @@@
 ram: @@@
 hdd: @@@

 -->
 <jsp:useBean id="com" class="z02_vo.Computer"></jsp:useBean>
 <jsp:setProperty property="cpu" name="com" value="존나 짱짱 cpu i5"/>
 <jsp:setProperty property="ram" name="com" value="8"/>
 <jsp:setProperty property="hdd" name="com" value="400"/>
 <h1>구매컴퓨터사양</h1>
 <h2>- cpu : <jsp:getProperty property="cpu" name="com"/></h2>
 <h2>- ram : <jsp:getProperty property="ram" name="com"/>gb</h2>
 <h2>- hdd : <jsp:getProperty property="hdd" name="com"/>gb</h2>
</body>
</html>
