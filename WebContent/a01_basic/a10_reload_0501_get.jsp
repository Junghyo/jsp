<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
# form의 속성
<form 속성1=값1 속성2=값2...>

 1. action
	- form 하위의 데이터를 전송하는 대상 page를 지정
	ex) <form action="page01.jsp">	: page01.jsp에 form 하위의 데이터를 name="전달key"을 이용하여 전달.
	- action 속성을 생략하면 현재 page로 데이터를 전송
	ex) main.jsp에서 <form> action속성을 설정안하면 main.jsp로 다시 재로딩되면서 전달 처리.

 2. method = "get | post"
	<form method="get | post">
	
	1) get방식 : url기반으로 query String형식으로 데이터를 전송
		- query String : 데이터를 전송시 key1=value1&key2=value2&key3=value3
		- <name="key1" value="value1"><name="key2" value="value2"><name="key3" value="value3">
		- 속성값을 지정하지 않으면 default가 get방식으로 url에 데이터 전송이 보인다.
		ex) http://localhost:7080/jsp_exp/a01_basic/a10_reload_0501.jsp?favFruit=himan
		- url에 직접 데이터를 입력해서 전송할 수 있다.
		- 데이터 전송용량에 한계
		- 보안면에서 취약 : url을 통해 데이터가 전송되는 것이 확인되기 때문
	
	2) post방식 : url이 아니라 데이터 영역을 이용해서 데이터를 전송하기에
				 웹브라우저나 서버 상관없이 전송할 수 있는 파라미터 길이에 제한이 없다.		 
		- query string으로 데이터는 전달하지만, url을 통해서 데이터를 확인할 수는 없다.
		
 # 한글 처리 get/post
 
 웹 브라우저
 파라미터 홍길동 -> 인코딩(####)
 
 웹 서버(WAS)
 파라미터 #### -> 디코딩(홍길동)
 
 1. get방식으로 전달하는 경우
 	- 파라미터 값을 지정한 캐릭터셋으로 알맞게 읽어 오는 방법(WAS 따라 차이)
 	- TOMCAT 7.0과 8.0 차이
 		7.0 : TOMCAT 7.0 server.xml로  URIEncoding속성값으로 처리.
 		ex) euc-kr -> euc-kr, utf-8 -> utf-8
 	
 2. post방식으로 전달하는 경우
 	- request.setCharacterEncoding("utf-8");
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String f1 = request.getParameter("favFruit");
//	request.getParameter("favFruit") 초기 X
//	f1=> null
//	초기 page이거나 name=favFruit 값을 입력하지 않을 때는 null이 있기 떄문에 이에 대한 처리를 해 주어야 한다.
	if(f1==null){
		f1="";
	}
%>
<body>
	<form>	<!-- form에 action 속성을 지정하지 않으면 현재 page를 호출한다. -->
		좋아하는 과일:<input name="favFruit" value="<%=f1%>"><br>
		<input type="submit">
	</form>
	입력한 과일: <%=f1 %>
</body>
</html>