<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
/*
 # form의 속성처리
 1) send.jsp
 [good job] -> name ="send01"
 <form action="receive.jsp">
 	<input name="send01">
 	<input type="submit" value="전송">
 
 - type이 submit인 버튼을 클릭하면 froml 하위의 input이나 select
    객체들의 데이터가 지정된 페이지(action)에 전송이 된다.
  
 2) receive.jsp
 String send01 = request.getParameter("send01");
*/
$(document).ready(function(){
	
});
</script>
</head>
<body>
<!-- form이 있어야지 하위에 있는 <input에 소속된
	데이터들이 전송할 수 있다.
	실제 전송하는 이벤트를 발생하는 것은 form 하위에
	<input type="submit" 라는 버튼을 통해서 전송이
	된다.
	form의 속성값 action에 지정된 jsp페이지로 데이터를
	전송한다.
 -->
<form action="a08_receive_0428.jsp">
	ID:<input type="text" name="id"/><br>
	<input type="submit"/>
</form>	
<!--  name="id" 값이 요청하는 page에서
	request.getParameter("id")로 데이터를 받을 수 있다.
 -->
</body>
</html>




