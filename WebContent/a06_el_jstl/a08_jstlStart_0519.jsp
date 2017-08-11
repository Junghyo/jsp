<!-- 
 # jstl
 1) jsp 표준 태그 라이브러리
 	- html로 지원하는 tag를 확장해서 jsp에서 개발자가
 	  활용하는 태그를 만든 것을 커스텀 태그라고 한다.
 	  커스텀 태그 중에서 많이 사용되는 것을 모아서 JSTL 이라는
 	  규약을 만들고 이를 활용하고 있다.
 	 
 	- 스크립트 코드를 사용할 떄 보다 간결하고 이해하기 쉬운 jsp 코드를
 	   작성하게 도와준다.
 	   
 2) 태그 종류
 	- 코어 c : 변수, 흐름제어, url 처리
	- 국제화 fmt  : 숫자 및 날짜 형식 처리
	- XML x


 # jstl 라이브러리 활용
 1) jstl 라이브러리 다운
 2) WEB-INF/lib 에 위치시킴
 3) jsp 상단에 < % @ taglib prefix="c" url="http://java.sun.com/jsp/jstl/core"%>

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
	<c:set var="callMe" value="jstl호출"/>
	<h1>${callMe }</h1>
	
</body>
</html>
