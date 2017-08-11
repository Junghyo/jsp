<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.A01_EmpDB_0510"
    import="z02_vo.Emp, java.util.*"
    %>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#uptBtn").click(function(){
			if($("input").val()==""){
				alert("입력값이 비었습니다.");
				$(this).focus();
				return;
			}
			$("#proc").val("upt");
			$("form").submit();
//			?proc=upt&			
		})
		$("#delBtn").click(function(){
			$("#proc").val("del");
			$("form").submit();
//			?proc=del&					
		})
		$("#mainBtn").click(function(){
			alert("메인화면 이동");
			$(location).attr("href", "a03_schEmpList_0511.jsp");
		})

	});
</script>
<style type="text/css">

</style>
</head>
<%
	String empno = (request.getParameter("empno")!=null)?request.getParameter("empno"):"0";

	A01_EmpDB_0510 db = new A01_EmpDB_0510();
	Emp detail=db.oneEmp(new Integer(empno));
%>
<body>
	<h1>사원 상세 화면</h1>
	<h2>사번: <%=request.getParameter("empno") %></h2>
	<form method="post" action="a07_updateProc_0512.jsp">
<!-- empno 화면에 type=text로 보이지 않지만 실제 proc상 넘겨야 할 때 type="hidden"을 이용한다 -->	
		<input type="hidden" name="empno" value="<%=detail.getJempno() %>">
		<input type="hidden" name="proc" id="proc">
		<table>
			<tr>
				<td>사원명</td><td><input name="ename" value="<%=detail.getJename() %>"></td>
			</tr>
			<tr>
				<td>직책</td>
				<td>
				<select name="job">
						<option <%="MANAGER".equals(detail.getJjob())?"selected":"" %>>MANAGER</option>
						<option <%="CLERK".equals(detail.getJjob())?"selected":"" %>>CLERK</option>
						<option <%="ANNALYST".equals(detail.getJjob())?"selected":"" %>>ANALYST</option>
						<option <%="SUPERMAN".equals(detail.getJjob())?"selected":"" %>>SUPERMAN</option>
						<option <%="PRESIDENT".equals(detail.getJjob())?"selected":"" %>>PRESIDENT</option>
						<option <%="SALESMAN".equals(detail.getJjob())?"selected":"" %>>SALESMAN</option>
						<option <%="연예인".equals(detail.getJjob())?"selected":"" %>>연예인</option>
						<option <%="가수".equals(detail.getJjob())?"selected":"" %>>가수</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>관리자번호</td><td><input name="mgr" value="<%=detail.getJmgr() %>"></td>
			</tr>
			<tr>
				<td>입사일</td><td><input name="hiredate" value="<%=detail.getjhiredate() %>"></td>
			</tr>
			<tr>
				<td>연봉</td><td><input name="sal" value="<%=detail.getJsal() %>"></td>
			</tr>
			<tr>
				<td>보너스</td><td><input name="comm" value="<%=detail.getJcomm() %>"></td>
			</tr>
			<tr>
				<td>부서번호</td><td><input name="deptno" value="<%=detail.getJdeptno() %>"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" id="mainBtn" value="메인페이지 이동"></td>
				<td colspan="2"><input type="button" id="uptBtn" value="수정"></td>
				<td colspan="2"><input type="button" id="delBtn" value="삭제"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>