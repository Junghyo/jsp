<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Map"%>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String [] playerList = request.getParameterValues("favPlayer");
	String [] fruitList = request.getParameterValues("favFruit");
	Map map01 = request.getParameterMap();
	String [] data = (String[])map01.get("favFruit");
	

%>
<body>
	<form method="post">
		id: <input name="id" ><br>
		password: <input name="password" ><br>
		player1: <input name="favPlayer" ><br>
		player2: <input name="favPlayer" ><br>
		player3: <input name="favPlayer" ><br>
		player4: <input name="favPlayer" ><br>
		<input type="checkbox" name="favFruit" value="Apple">Apple<br>
		<input type="checkbox" name="favFruit" value="Banana">Banana<br>
		<input type="checkbox" name="favFruit" value="Orange">Orange<br>
		<input type="checkbox" name="favFruit" value="Melon">Melon<br>
		<button type="submit">SEND</button>
	</form>
	<h2>request.getParameter()</h2>
	id: <%=id %>
	password:<%=password %>
	
	<h2>request.getParameterValues()</h2>
	<%if(playerList!=null && playerList.length>0){
		for(String player : playerList){%>
		<%=player %>
		<%} %>
	<%} %>
		<%if(fruitList!=null && fruitList.length>0){
		for(String fruit : fruitList){%>
		<%=fruit %>
		<%} %>
	<%} %>
	<h2>request.getParameterNames()</h2>
	<%Enumeration params = request.getParameterNames();
	  while(params.hasMoreElements()){
	  String param = (String)params.nextElement();%>
	  <%=param %>
	<%} %> 
	
	<h2>request.getParameterMap()</h2> 
	<%if(data!=null && data.length>0){ %>
		<%=data[0] %>
		<%=data[1] %>
		<%=data[2] %>
		<%=data[3] %>
	<%} %>

</body>
</html>