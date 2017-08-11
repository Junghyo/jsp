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
		$("input[type=button]").click(function(){
			var prod = $("input[name=prod]").val();
			$.ajax({
				url:"a07_totStock_0530.jsp",
				type:"post",
				data:"prod="+prod,
				dataType:"text",
				success:function(msg){
					$("h1").html(msg);
				}
			})
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<form>
		물건명: <input name="prod"/><br>
		<input type="button" value="재고량 확인"/>
	</form>
	<h1></h1>
</body>
</html>
<!-- 
 초기화면
  - 물건명: []
    [ 재고량 확인 ]
    
    
 사과는 5개 바나나는 6개 그외는 재고량 없음
 -->