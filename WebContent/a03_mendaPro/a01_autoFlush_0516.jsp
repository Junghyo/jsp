<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    buffer="1kb"
    autoFlush="true"
    %>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 # 출력 버퍼 : jsp 페이지는 출력 결과를 곧바로 웹브라우저에 전송하지 않고,
 			 해당 버퍼에 임시 저장했다가 한번에 웹브라우저에 전송한다.
 
 1. 데이터 전송 성능 향상( img, 화면구성내용)
 	- 작은 단위로 네트워크상 데이터를 전송하는 것보다 큰 단위로 한번에 전송한는 것이 효율적이기 때문
 
 2. 웹브라우저로 바로 전송하지 않기 때문에 실행 도중 버퍼를 비우고 새로운 내용을 보여 줄 수 있다.
 	- 브라우저에 보낼 때 에러가 난 내용을 그대로 보내지 않고 에러에 대비해서 만들어 놓은 에러msg, 에러정보표시page로 이동할 수 있기 때문
 
 3. 속성 설정
 	- 상단 page buffer = '@kb' : kb 단위로 버퍼의 크기를 지정
 	- 버퍼 지정하지 않을 때 buffer = "none"
 		1) jps:forward 기능을 사용할 수 없다.
 		2) 곧바로 전송되기 때문에 출력 내용을 취소할 수 없다.
 
 4. 플러시(flush)	 : 버퍼가 쌓인 데이터를 실제 전송하는 곳. 전송하고 버퍼를 비우는 처리를 말한다.
 	- page autoFlush ="true/false"
 		1) true : 버퍼가 다 찼을 경우 버퍼를 플러시하고 계속해서 작업 진행
 		2) false : 버퍼가 다 찼을 경우 예외를 발생시키고 작업 중지 처리.
 			- java.io.IOException: Error: JSP Buffer overflow
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<%for(int cnt=0; cnt<1000; cnt++){ %>
		Ronaldo!!
	<%} %>	
</body>
</html>