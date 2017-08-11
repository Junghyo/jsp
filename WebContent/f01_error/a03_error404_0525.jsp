<!--  
 # 에러 처리
 1) 에러처리 프로세스
 에러발생 page
 	 ↓				==> 해당 page 소스 < % @ page errorPage="에러처리 page"	
 	 ↓				==> web.xml	
 에러처리 page 			  <error-page>
    						<exception-type>java.lang.NullPointerException</exception-type>
    						<location>/f01_error/a02_errorPage_0524.jsp</location>
  						  </error-page>
  						  
 # 웹에서 발생하는 주요 에러 코드
 200 : OK, 에러없이 전송 성공
 403 : Forbidden, 접근이 거부된 문서를 요청
 404 : Not found, 문서를 찾을 수 없음
 405 : Method not allowed, 리소스를 허용안함
 407 : Proxy authentication required, 프록시 인증 필요
 414 : Request-URI too long, url이 너무 김
 500 : Internal server error, 내부 서버 오류
 505 : HTTP version not supported, 서버가 요청에 사용된 http 프로토콜 버젼을 지원하지 않음 		
 
 # web.xml 에러코드처리
 404: url에 해당 자원이 없을 때 나타나는 에러				  

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
    isErrorPage="true"
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

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h2>주소가 올바르게 입력되지 않았습니다. 확인해주세요.</h2>
<!--
익스플로러 513바이트 이상 필요
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
주소가 올바르게 입력되지 않았습니다. 확인해주세요.
-->
</body>
</html>
