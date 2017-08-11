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
		$.ajax({
			url:"player.json",
			dataType:"json",
			success:function(a){
				$.each(a, function(){
					$("table").append(
						"<tr>"+
						"<th>"+this.name+"</th>"+
						"<th>"+this.position+"</th>"+
						"<th>"+this.birth+"</th>"+
						"<th>"+this.uniformNumber+"</th>"+
						"</tr>"
					);
				})
			}
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<table>
		<tr>
			<th>이름</th>
			<th>포지션</th>
			<th>생년월일</th>
			<th>등번호</th>
		</tr>
	</table>
</body>
</html>