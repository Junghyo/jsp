<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/* 
# multi check data
1) 동일한 name 값의 type="checkbox"일 때 처리 내용
	- <input type="checkbox" name="fav" value="사과">사과
	  <input type="checkbox" name="fav" value="바나나">바나나
	  <input type="checkbox" name="fav" value="딸기">딸기
	- request.getParameterValues("fav");  
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
//	checkbox인 경우 check된 데이터만 입력이 됨.
	String choice="";
	String [] fruitList = request.getParameterValues("favFruit");
	if(fruitList!=null && fruitList.length>0){
		for(String fruit : fruitList){
			choice+=fruit+",";
		}
	}
%>
<body>
	<form method="post">
		<h1>Favorite Fruits</h1>
		<input type="checkbox" name="favFruit" value="Apple">Apple<br>
		<input type="checkbox" name="favFruit" value="Banana">Banana<br>
		<input type="checkbox" name="favFruit" value="Orange">Orange<br>
		<input type="checkbox" name="favFruit" value="Melon">Melon<br>
		<input type="submit" value="Fruit Enroll">
	</form>
	<h1>Checked fruits are <%=choice %>.</h1>
</body>
</html>
