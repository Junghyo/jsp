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
		$("button").click(function(){
			$(this).css("background","green");
			$("#product").val($(this).attr("id"));
			$("form").submit();
		});
		$("#cart").click(function(){
			$(location).attr("href","${path}/prodList");
		});
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h1>쇼핑몰</h1>
	<form method="post">
		<input type="hidden" id="product" name="product">
		<ul>
			<li>
				사과  <button id="apple">장바구니 담기</button>
			</li>
			<li>
				바나나  <button id="banana">장바구니 담기</button>
			</li>
			<li>
				딸기  <button id="strawberry">장바구니 담기</button>
			</li>
		</ul>
		<input type="button" id="cart" value="장바구니 확인">
	</form>
</body>
</html>