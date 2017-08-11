<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 1) out 객체 : 화면에 출력처리하는 객체
 	- println("출력할 내용과 줄 바꿈");
 
 2) out은 buffer와 관계
 	- 내부적으로는 default 버퍼를 16kb 사용하고 있다.
 	- getBufferSize() : 버퍼의 설정된 크기
 	- getRemaining() : 버퍼의 남은 크기
 	- clear() : 버퍼의 내용을 비운다. (플러시된 상태이면 예외발생)
 	- clearFlush() : 버퍼의 내용을 비운다. 플러시 상관없이 정상처리
 	- flush() : 버퍼를 플러시한다.
 	- isAutoFlush() : 자동플러시 여부
 
*/

	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<%out.println("HELLO WORLD!"); %>
	<h1>h1: HELLO WORLD!</h1>
	<%out.println("<h2>HELLO WORLD!</h2>"); 
	  out.println("<h3>버퍼크기:"+out.getBufferSize()+"</h3>");
	  out.println("<h4>남은버퍼크기:"+out.getRemaining()+"</h4>");
	  out.println("<h4>자동 플러시 여부:"+out.isAutoFlush()+"</h4>");
	%>
</body>
</html>