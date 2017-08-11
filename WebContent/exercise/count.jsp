<!--
	경매카운트만 확인하기 위해 DB테이블에 종료시간 속성만 추가함.
-->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*, java.text.*"
    import = "z02_vo.Item, z01_database.ItemDB"
    %>
<%
request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
  ItemDB dao = new ItemDB();
  Item dto = new Item();
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
  String day = sdf.format(dao.when(dto).getJdday());
  
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		setTime();
	});

	function setTime(){
		var sysday = new Date();
		var dday = new Date("<%=day%>");
		var gap = parseInt((dday.getTime()-sysday.getTime())/1000);
		var days = parseInt(gap/(60*60*24));
		var hours = parseInt((gap%(60*60*24))/(60*60));
		var minutes = parseInt((gap%(60*60))/60);
		var seconds = gap%60;
		$("h1").html(days+"일 "+hours+"시간 "+minutes+"분 "+seconds+"초 ");
		if(gap<=0){
			$("h1").html("경매종료");
			alert("경매끝!");
			clearInterval(count);
		}
	}
	
	var count = setInterval(setTime,1000);

</script>
<style type="text/css">

</style>
</head>
<body>
	<h1></h1>
</body>
</html>