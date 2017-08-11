<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z02_vo.Student_0511"
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
  Student_0511 stu = new Student_0511();
  stu.setJname("박용택");
  stu.setJgrade("1");
  stu.setJclass(3);
//	session에 객체를 등록 -> 배열 ArrayList<VO>
  session.setAttribute("stu01", stu);
  
  
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body>
	<h1>session 등록완료</h1>
	<a href="a05_checkObjSession_0517.jsp">session 확인</a>
</body>
</html>