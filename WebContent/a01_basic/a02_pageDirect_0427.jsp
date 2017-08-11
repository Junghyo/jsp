<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jsp.a01_basic.Person_0427"
    import = "java.util.ArrayList" 
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 # 페이지 디렉티브
 자바클래스 호출하여 사용하는 방법
 –class 객체 생성.
 package와 클래스 생성..
 
 –package : jspexp.a01_basic
 
 –class : Person.java
 
 –속성 : name, age, loc
 
 –setXXX, getXXX 생성
 메뉴  Source  Generator Getter/Setter
 
 < % @ page
  import = "jspexp.a01_basic.Person” % >
 < % Person p = new Person();
 	p.setName(“홍길동”);
 –% >
 <tr><td>이름</td><td>< %=p.getName()%></td></tr>
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	Person_0427 p = new Person_0427();
	p.setName("호날두");
	p.setAge(31);
	p.setLoc("포르투갈");
%> 

<body>
	<h1 align="center">인적 사항!!</h1>
	<table align="center" border=1>
		<tr><td>이름</td><td><%=p.getName()%></td></tr>
		<tr><td>나이</td><td><%=p.getAge()%></td></tr>
		<tr><td>어디?</td><td><%=p.getLoc()%></td></tr>
	</table>
</body>
</html>