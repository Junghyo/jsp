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
 int price = 40000;
%>
<body>
<!-- 
 # 확인예제
 go water Park
 기본 입장료: 40000원
 나이를 입력하세요 [	] 
 나이에 따른 할인률 적용 : 금액표시(2단계)
 - 0~3 : 무료
 - 4~7 : 70% 할인
 - 8~13 : 50% 할인
 - 14~18 : 20% 할인
 - 18~64 : 0% 할인
 - 65~ : 무료

 -->
 	<form method="post">
 		기본 입장료: <%=price %>
 		나이를 입력하세요 : <input type="number" name="age">
 	</form>
 	<c:if test="${not empty param.age }">
 		<c:choose>
 			<c:when test="${param.age <=3 or param.age>=65 }">
 				<h2>무료입장입니다.</h2>
 			</c:when>
 			<c:when test="${param.age >= 18 }">
 				<h2>0%할인. 입장료: <%=price-price*0 %>원</h2>
 			</c:when>
 			<c:when test="${param.age >= 14 }">
 				<h2>20%할인. 입장료: <%=price-price*0.2 %>원</h2>
 			</c:when>
 			<c:when test="${param.age >= 8 }">
 				<h2>50%할인. 입장료: <%=price-price*0.5 %>원</h2>
 			</c:when> 
			<c:otherwise>
				<h2>70%할인. 입장료: <%=price-price*0.7 %>원</h2>
			</c:otherwise> 						
 		</c:choose>
 	</c:if>
</body>
</html>
