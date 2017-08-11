<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, z02_vo.*, java.util.*"
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
/*
 $.ajax(json형식으로 option 설정);
		  ex) $.ajax({ url:'', dataType:'', success:function(){} });

 1. url : 요청 자원(서버)을 호출, 일반적으로 호출된 자원에서는 json형식으로 데이터 return해준다.
		  ex) call.jsp, start.do, json.http
		
 2. type : 요청 처리방식 post/get, default는 get

 3. data : 요청시, 함께 전달되는 데이터(query string)
		  ex) id=himan&password=7777
		      $("form").serialize() : form 안에 있는 데이터를 query로 변경하여 전달

 4. dataType : 요청 후, 응답의 결과로 반환되는 데이터의 종류를 선언
         ex) xml, html, json, text

 5. success : 성공했을 때, 처리할 내용, 함수로 나타냄
		  ex) success : function( data ){
			  		data : 요청의 응답의 결과로 받은 데이터
		  	  }
    
 6. error : 응답이 에러가 발생했을 경우, 에러 상태에 대한 코드를 반환하면 호출되는 함수
		  ex) error:function( code ){
			  code : 에러에 대한 code 내용 전달
		  }
*/
	$(document).ready(function(){
		$("#player1").click(function(){
			$.ajax({
				url:"z01_data_0530.html",
				dataType:"html",
				success:function( data ){
//					정상작동했을 때, html에 있는 내용 화면에 뿌려줌
					$("#message1").html(data);
				}
			})
		})
	});

</script>
<style type="text/css">

</style>
</head>
<body>
	<div>
		<a href="#" id="player1">선수보기1</a>
		<span id="message1"></span>
	</div>
</body>
</html>