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
 # 전송된 데이터 한글처리
 - Servers 하위 server.xml 파일에
   <Connector connectionTimeout="20000" port="7080" URIEncoding="UTF-8" 삽입
*/
/*
 확인예제.
 오늘의 명언(1단계)
 a09_sendExp_0428.jsp
 	- 명언을 입력하세요: [     ]
 
 a10_revExp_0428.jsp(다음 page)
 	- Do be in mind! : @@@@@@@
 
 인증처리(2단계)
 ID	[     ]
 PASSWORD [       ]
 [로그인]
 -> @@@@님 환영합니다.// @@@님은 회원가입을?
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String id=request.getParameter("id");
%>
<body>
	<h1>받은 데이터: <%=id %></h1>
</body>
</html>