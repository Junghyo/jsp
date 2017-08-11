<!-- 
 # c:set 객체할당
 1) 처리 프로세서
 	- 객체 생성 
 			request/session.attribute("key",객체);
 			Person p = new Person();
 				
 	- 객체 변수할당
 			value : $ {key}, < %=p %>
 			c:set var="obj01" value=" $ {key}"
 		
 	- 객체의 메서드 활용
 			$ {obj01.property} getName ==> name		
 	
 	- 메서드(property)를 통해서 필드 값의 변경
 			c:set target="$ {obj01}" property="name" value="신길동"  ==> obj01.setName("신길동")		

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
<%
//	요청 객체에 객체 변수 할당
	Student_0511 st = new Student_0511();
	st.setJname("박용택");
	st.setJkor(90);
	request.setAttribute("student", st);
%>
<body>
	<c:set var="stu01" value="${student }"/>
	이름:${stu01.jname }<br>
	국어:${stu01.jkor }<br>
	패스여부(60이상):${stu01.jkor>=60 }
<!-- 
	Emp 객체 생성
	- ename: @@@
	- sal 할당
	request에 attribute로 저장
	c:set 이름 em01로 할당
	출력 : 사원이름 @@@, 사원급여 @@@, 연봉A등급 여부(7000이상):true/false
 -->	
</body>
</html>