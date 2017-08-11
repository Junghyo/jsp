<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.A01_EmpDB_0510, java.text.SimpleDateFormat"
    import="z02_vo.Emp, java.util.*"
    %>
<%request.setCharacterEncoding("UTF-8"); %>  
<%
//	proc 구분하는 요청값 받기(upt/del)
	String proc = (request.getParameter("proc")!=null)?request.getParameter("proc"):"";
	A01_EmpDB_0510 dao = new A01_EmpDB_0510();
	Emp dto = new Emp();
	String ename = (request.getParameter("ename")!=null)?request.getParameter("ename"):"";
	String job = (request.getParameter("job")!=null)?request.getParameter("job"):"";
	String mgr = (request.getParameter("mgr")!=null)?request.getParameter("mgr"):"0";
	String sal = (request.getParameter("sal")!=null)?request.getParameter("sal"):"0";
	String comm = (request.getParameter("comm")!=null)?request.getParameter("comm"):"0";
	String deptno = (request.getParameter("deptno")!=null)?request.getParameter("deptno"):"0";
	String empno = (request.getParameter("empno")!=null)?request.getParameter("empno"):"0";
	dto.setJename(ename);
	dto.setJjob(job);
	dto.setJmgr(new Integer(mgr));
	dto.setJsal(new Double(sal));
	dto.setJcomm(new Double(comm));
	dto.setJdeptno(new Integer(deptno));
	dto.setJempno(new Integer(empno));
	if(proc.equals("upt")){
		dao.updateEmp(dto);
//		response.sendRedirect("a03_schEmpList_0511.jsp");
	}else if(proc.equals("del")){
		dao.deleteEmp(dto.getJempno());
//		dao.delete(dto);		
//		response.sendRedirect("a03_schEmpList_0511.jsp");
	}
	
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
//	이전 page에서 넘겨온 proc에 따라서 msg와 이동할 페이지가 다른 경우
	var proc="<%=proc%>";
	if(proc=="upt"){
		alert("수정 완료");
		$(location).attr("href", "a06_empDetail_0512.jsp?empno=<%=dto.getJempno()%>");
	}else if(proc=="del"){
		$(location).attr("href", "a03_schEmpList_0511.jsp");
	}
	
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>


<body>
	
</body>
</html>