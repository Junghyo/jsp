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
 # response 기본 객체
 1) 웹 브라우저에 보내는 응답 정보를 담는다.

 2) 기능
	- 헤더 정보 입력
	- 리다이렉트 하기 : page 이동

 3) 헤더 정보 추가 메서드	
	- 형식 : response.XXXX
	- addDateHeader(String name, long date) ; name이라는 key로 날짜정보(1970/1/1기준 1/1000초)를 추가
	- addHeader(String name, String value) : 헤드에 name과 value로 추가한다.
	- setHeader(String name, String value) : 해당 헤드의 name값을 value값으로 변경 

 4) 리다이렉트로 페이지 이동
	- response.sendRedirect("이동할 page");
	- login -> request.getParameter(XXX) -> 값에 따라서 main page 또는 login page 로 이동
	cf) 클라이언트단에서 페이지 이동 : location.href	 
*/
	$(document).ready(function(){
		$("#loginBtn").on("click", function(){
			alert($(this).val());
			if($("input[name=id]").val()==""){
				alert("ID를 입력하세요.");
				$("input[name=id]").focus(); // 포커스 처리
				return;	// 프로세스 중단				
			}
			if($("input[name=pwd]").val()==""){
				alert("PASSWORD를 입력하세요.");
				$("input[name=pwd]").focus();
				return;
			}
//			form객체의 특정 페이지 이동 처리
			$("form").attr("action","a17_response_red_0509.jsp");
			$("form").attr("method","post");
//			해당페이지로 데이터 전송 처리
			$("form").submit();
		})
	});
</script>
<style type="text/css">

</style>
</head>
<body>
<!--  
 login 해서 다음 page(a17_response_red_0509.jsp)에 요청값을 전달하여
 해당 page에서 인증된 데이터가 있으면 로그인 성공, id를 화면에 보여주고
 아니면 다시 login page로 이동 처리(response.sendRedirect)	
-->
	<form>
		ID : <input type="text" name="id"><br>
		PASS: <input type="password" name="pwd"><br>
		<button id="loginBtn">LOGIN</button>
	</form>
</body>
</html>