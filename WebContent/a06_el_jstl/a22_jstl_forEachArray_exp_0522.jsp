<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, java.util.*"
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
	ArrayList<Members> mlist = new MembersDAO().memList();
	request.setAttribute("member", mlist);

%>
<body>
<!-- 
 # 확인예제
 1단계 MembersDAO 의 getMember(Member sch)를 활용해서 화면 list 처리

 --><table>
 		<tr>
 			<th>아이디</th>
 			<th>패스워드</th>
 			<th>이름</th>
 			<th>포인트</th>
 			<th>권한</th>
 		</tr>
 		<c:forEach var="mem" items="${member }">
 			<tr>
	 			<th>${mem.jid }</th>
	 			<th>${mem.jpwd }</th>
	 			<th>${mem.jname }</th>
	 			<th>${mem.jpoint }</th>
	 			<th>${mem.jauthor }</th>
 			</tr>
 		</c:forEach>
 </table>


</body>
</html>