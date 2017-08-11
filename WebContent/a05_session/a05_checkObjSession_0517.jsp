<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z02_vo.Student_0511"
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
//	Object 타입이기에 type casting이 필요  
  Student_0511 stu = (Student_0511)session.getAttribute("stu01");
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
	<h1>세션에 있는 Student 이름: <%=stu.getJname() %></h1>
	<h1>세션에 있는 Student 학년: <%=stu.getJgrade() %></h1>
	<h1>세션에 있는 Student 반: <%=stu.getJclass() %></h1>
</body>
</html>