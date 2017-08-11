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
 # form에서 데이터 전송
 1) request
 	- getParameterValues("멀티name") -> String[]
 ex) <name="key">
 	 <name="key">
 	 <name="key"> 
*/
	$(document).ready(function(){
		$("button").on("click",function(){
//			데이터 validate check
			if( confirm("전송하시겠습니까?") ){
				$("form").submit();
			}	
		})
	});
</script>
<style type="text/css">

</style>
</head>
<%
//	request.getParameterValues : 데이터값이 다수 일 경우.(배열로 받음)
	String [] nameList = request.getParameterValues("player");
%>
<body>
	<form method="post">
	좋아하는 선수를 입력하세요!
	1. <input name="player">
	2. <input name="player">
	3. <input name="player">
	4. <input name="player">
	<button>전송</button>
	</form>
	<%	if(nameList!=null && nameList.length>0){
	  		for(String name : nameList){ %>
				<%=name %>
		<%	} 
	 	}%>		
</body>
</html>