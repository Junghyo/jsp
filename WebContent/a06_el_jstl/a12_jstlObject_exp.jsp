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
<%
	A01_EmpDB_0510 dao = new A01_EmpDB_0510();
	Emp e1 = new Emp();
	e1.setJename("4번타자");
	e1.setJsal(5000);
	request.setAttribute("emp", e1);
	Emp e2 = new Emp();
	e2.setJempno(7939);
	Emp vo = dao.oneEmp(e2.getJempno());
%>
<body>
	<c:set var="em01" value="${emp }"/>
	<c:set target="${em01 }" property="jename" value="에이스"/>
	사원이름:${em01.jename }<br>
	사원연봉:${em01.jsal }<br>
	연봉A등급 여부(7000이상):${em01.jsal>=7000 }
<!-- 
 property(메서드를 통해 필드값) 변경
 c:set target="객체변수" property="메서드set삭제이름값" value="입력할 데이터"
-->
	

</body>
</html>