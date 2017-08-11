<!-- 
 # forEach 배열객체
 - c:forEach var = "p"															ArrayList<Emp> list = new ArrayList<Emp>();
 - items = "${list}"															Emp p;
 - varStatus = "sts"															for(int idx=0; idx<list.size(); idx++){
 - varStatus = "sts"를 통한 loop안에서의 활용되는 옵션처리										p=list.get(idx);
 	sts.index : 인덱스값 가져오기(0)									 					p.getEname(), p.getMgr(),....
	sts.count : 카운트(1~)														}
	sts.first : 첫번째 값인 경우, boolean true
	sts.last : 마지막값인 경우, boolean true

 - loop안에서 활용
 	${p.ename} 
 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="z01_database.*, java.util.*"
    import="z02_vo.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<%
	ArrayList<Emp> empList = new A01_EmpDB_0510().empList();
	request.setAttribute("list", empList);
%>
<body>
	<h1>크기: ${list.size() }</h1>
<!-- for(Emp emp:list)와 동일 -->	
	<c:forEach var="emp" items="${list }" varStatus="sts">
<!-- emp.getJename()와 동일 -->	
		<h2 style="color:${sts.first?'tomato':''}; background:${sts.last?'yellow':''};">${sts.count}.${emp.jename }[${sts.index }], 
		${emp.jempno }, ${emp.jjob }, ${emp.jmgr }, ${emp.jsal }</h2>
	</c:forEach>
</body>
</html>
<!-- 
 # 확인예제
 1단계 MembersDAO 의 getMember(Member sch)를 활용해서 화면 list 처리

 -->