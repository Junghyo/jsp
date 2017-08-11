<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Map"
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
# request 기본객체의 파라미터 읽기
1) getParameter("name01")
	- <input name="name01">
	
2) getParameterValues("name02")
	- <input type="checkbox" name="name02">	
	  <input type="checkbox" name="name02">	
	  
3) getParameterNames()
	- form 하위에 입력값으로 넘겨지는 모든 name의 값을 Enumeration 호출
	- <input name="data01">
	  <input type="checkbox" name="data02">
	  <select name="cho01"></select>
	- Enumeration param = request.getParameterNames();
	- while(param.hasMoreElements()){
	  	String name = (String)param.nextElements() -> data01, data02, cho01
	  }

4) getParameterMap()
	- 웹브라우저에 전송한 파라미터를 맵(이름, 값)으로 가져온다.
	  <input name="name01" value="값01">	  
	  <input name="name01" value="값02">	  
	  <input name="name01" value="값03">
	- 서버단
	  Map map01 = request.getParameterMap();
	  String[] names = (String[])map01.get("name");
	  names -> 값01, 값02, 값03  
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	Map map01= request.getParameterMap();
	String[] nameParams = (String[])map01.get("name");
%>
<body>
	<form method="post">
		이름<input name="name"><br>
		나이<input name="age"><br>
		지역<input name="loc"><br>
		<button type="submit">전송</button>
	</form>
	<%if(nameParams!=null){ %>
		입력한 이름: <%=nameParams[0] %>
	<%} %>	
</body>
</html>
