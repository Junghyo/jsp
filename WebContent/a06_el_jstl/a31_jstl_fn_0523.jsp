<!-- 
 # jstl에서 쓰이는 함수
 1) 설정
 	- @ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"
 
 2) 형식 : $ {fn:함수명(변수)}
 
 3) 주요함수 내용
 	- length() : 문자열의 길이
 	- toUpperCase() : 대문자 변환처리
 	- substring(변수, 시작index, 마지막index)
 	- trim() : 양 옆 공백문자 삭제
 	- replace(문자열, 변경할 문자열, 변경될 문자열)
	- split(문자열, 구분자) : 해당문자열을 구분자로 배열을 만듦
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
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
	<c:set var="str01" value="Hello World!"/>
	<c:set var="str02" value="Nice to meet you."/>
	<c:set var="str03" value="1,2,3,4,5,6,7,8,9"/>
		길이(length) : ${fn:length(str01) }<br>
		대문자변환(toUpperCase) : ${fn:toUpperCase(str02) }<br>
		문자열자르기(substring) : ${fn:substring(str02, 3, 9) }
		문자열변환(replace) : ${fn:replace(str02,"e","@@") }

</body>
</html>
<!-- 
 # 정리
 1. jsp에서 활용되는 변수의 scope 범위 4가지를 기술하세요.
 ==> page, request, session, application

 2. jstl을 사용하기 위하여 lib파일은 어떤 파일이 필요하고 설정 위치는 어디인가?
 ==> jstl.jar , standard.jar를 WEB-INF lib폴더에 위치
 
 3. web application context(프로젝트명)을 가져오기 위한 el은 무엇이며 default 경로는 어디에 저장하는가?
 
 4. form 하위에 <input name="call"/>라는 tag로 설정하여 요청값을 전달한다. el로 해당 데이터의 요청값을 가져오려면 어떤 code가 필요한가?
 ==> $ {param.call }

 5. 오늘 날짜를 등록하고 날짜를 다음과 같은 형식으로 출력하고자 한다. jstl code를 기술하세요.
 	출력형식: 2017/05/23 AM 11:47
 ==> fmt:formatDate type="both" pattern:"yyyy/MM/dd a h:mm"
 
 6. scope 범위로 session이 있다. 이는 구체적으로 웹 상에서 어느 범위를 말하는가? client와 server입장에서 기술하세요.
 
 7. emp데이터를 jstl을 통해서 해당 내용을 list하면서 가장 첫번째 컬럼에 1~부터 numbering하려고 한다. jstl코드를 기술하세요.
 -->