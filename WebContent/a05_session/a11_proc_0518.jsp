<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "z01_database.MembersDAO"
    import = "z02_vo.Members"
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>
<% 
	String proc = request.getParameter("proc");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	System.out.println("proc: "+proc);
	System.out.println("id: "+id);
	System.out.println("pwd: "+pwd);
	boolean hasInfo = false;
	boolean isLogout = false;
	if(proc!=null && proc.equals("login")){
		MembersDAO dao = new MembersDAO();
		Members dto = new Members();
		dto.setJid(id);
		dto.setJpwd(pwd);
		Members vo = dao.memInfo(dto);
//		조회 했을 때 없으면 null		
		if(vo!=null){
			hasInfo=true;
//			데이터 있으므로 session 처리
			session.setAttribute("member", vo);
		}
	}else if(proc!=null && proc.equals("logout")){
		session.invalidate();
		isLogout=true;
		
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
	var hasInfo = <%=hasInfo %>;
	var isLogout = <%=isLogout %>;
	if(hasInfo){
//		메인 페이지로 이동
		alert("로그인성공.");
		$(location).attr("href","a12_main_0518.jsp");
	}else if(isLogout){
		alert("세션종료! 로그아웃\n다시 로그인페이지로 이동합니다.");
		$(location).attr("href","a10_login_0518.jsp");
	}else{
//		로그인 페이지로 이동
		alert("해당 id와 password로 인증이 실패했습니다.");
		$(location).attr("href","a10_login_0518.jsp");
	}
</script>
<style type="text/css">

</style>
</head>


<body>

</body>
</html>