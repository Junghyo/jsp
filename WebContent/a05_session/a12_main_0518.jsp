<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "z01_database.MembersDAO"
    import = "z02_vo.Members"
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%> 
<%
	boolean hasSession=false;
	Members memInfo = null;
	if(session.getAttribute("member")!=null){
		hasSession=true;
		memInfo = (Members)session.getAttribute("member");
	}
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	var hasSession = <%=hasSession %>;
	if(!hasSession){
		alert("로그인 해주세요.");
		$(location).attr("href","a10_login_0518.jsp");
	}
	$(document).ready(function(){
		$("#logout").click(function(){
//			로그아웃
			$(location).attr("href", "a11_proc_0518.jsp?proc=logout");
		})
	});
</script>
<style type="text/css">

</style>
</head>

<body>
	<h2>로그인 성공! <%=memInfo.getJname() %>님 환영합니다.</h2>
	<h2>현재 포인트는 <%=memInfo.getJpoint() %>점 입니다.</h2>
	<button id="logout">로그아웃</button>
</body>
</html>
