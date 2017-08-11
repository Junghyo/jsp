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
request.setAttribute("prod1", new Product());
request.setAttribute("prod2", new Product());

%>
<body>
	<!-- # jstlObject 확인예제 및 숙제 0519
	거래내역(2단계)
	물건명		가  격		주문수량
	[	]		[	]		[	 ] 
	[	]		[	]		[	 ]
				[저 장]
	
  초기에 없음, 입력하고 저장한 다음 page부터 나타남
  product객체 c:set 저장
  두번째 이후는 property를 호출하여 저장처리
 ${param.name}
 request.setAttribute 활용
 c:set target 활용



 -->
 	<form method="post" action="a04_homework2_jstl_0519.jsp">
 		<table border=1>
 			<tr>
 				<th>물건명</th>
 				<th>가격</th>
 				<th>주문수량</th>
 			</tr>
 			<tr>
 				<th><input name="name" ></th> 				
 				<th><input type="number" name="price"></th> 				
 				<th><input type="number" name="cnt"></th> 				
 			</tr>
 			<tr>
 				<th colspan="3"><button type="submit">저장</button></th>
 			</tr>	
 		</table>
 	</form>
 	<c:set var="prod" value="${product }"/>
 	<table>
 		 <tr>
 			<th>물건명</th>
 			<th>가격</th>
 			<th>주문수량</th>
 		</tr>
 		<%for(int i=0; i<10; i++){ %>
 		<tr>
 			<th>${prod.name }</th>
 			<th>${prod.price }</th>
 			<th>${prod.cnt }</th>
 		</tr>
 		<%} %>
 	</table>
</body>
</html>