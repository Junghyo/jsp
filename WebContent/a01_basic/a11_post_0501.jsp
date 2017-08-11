<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// pageEncoiding="UTF-8" 

//	요청 decoding 처리를 UTF-8로 처리
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 2) post방식 : url이 아니라 데이터 영역을 이용해서 데이터를 전송하기에
                  웹브라우저나 서버 상관없이 전송할 수 있는 파라미터 길이에 제한이 없다.
                  
		- query string으로 데이터는 전달하지만, url을 통해서 데이터를 확인할 수는 없다.	
		
		
 # 한글 처리 get/post
 
 웹 브라우저
 파라미터 홍길동 -> 인코딩(####)
 
 웹 서버(WAS)
 파라미터 #### -> 디코딩(홍길동)
 
 1) get방식으로 전달하는 경우
 	- 파라미터 값을 지정한 캐릭터셋으로 알맞게 읽어 오는 방법(WAS 따라 차이)
 	- TOMCAT 7.0과 8.0 차이
 		7.0 : TOMCAT 7.0 server.xml로  URIEncoding속성값으로 처리.
 		ex) euc-kr -> euc-kr, utf-8 -> utf-8
 	
 2) post방식으로 전달하는 경우
 	- request.setCharacterEncoding("utf-8");
		
*/

	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String alias = request.getParameter("aliasName");
	if(alias==null){
		alias="";
	}
%>
<body>
	<form method="post">
		별명입력:<input name="aliasName"><br>
		<input type="submit">
	</form>
	입력된 별명: <%=alias %>
</body>
</html>