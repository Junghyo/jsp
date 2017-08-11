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
 확인예제
 1) Bean: Book
 - 도서명, 출판사, 가격, 출판일
 
 2) 화면1 
 도서등록
 -도서명:[]
 -출판사:[]
 -가격:[]
 -출판일:[]
 [등록]
 
 3) 화면2
 등록한도서내역
 -도서명[출판사](@@@@@원)-출판일
 -->
	<form method="post" action="a12_checkBook_0529.jsp">
		<h1>도서 등록</h1>
		도서명:<input name="name"><br>
		출판사:<input name="publisher"><br>
		가격:<input type="number" name="price"><br>
		출판일:<input type="date" name="publishDate"><br>
		<button type="submit">도서 등록</button>
	</form>
</body>
</html>