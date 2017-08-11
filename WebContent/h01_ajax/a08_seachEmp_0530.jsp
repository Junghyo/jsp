<!-- 
 # ajax DB 연결
 1. 조회하는 화면에서 DB list된 jsp를 불러와서
     해당 list에 붙이는 형식
     
 2. 순수하게 json Data를 호출하여 가져와서, 해당 화면을 만들어가는 방식
 	(ArrayList => JSON 변경)
 	
 # JSON 데이터 로딩(화면 호출)
  1) 입력 ui를 통해서 데이터 전달 처리
  	- 사원명: [	]
  	- 직책: [	]
  	- 입력하는 순간 list.jsp 전달 데이터 내용 가져오는 처리
  	
  	
  2) 조회 목록 리스트(data) jsp
  	

 -->
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
	$(document).ready(function(){
		$("input").keyup(function(){
			var ename = $("input[name=ename]").val();
			var job = $("input[name=job]").val();
			$("input[name=ename]").val(ename.toUpperCase());
			$("input[name=job]").val(job.toUpperCase());
			var sendData = "ename="+ename+"&job="+job;
			$("h1").html(sendData);
			$.ajax({
				url:"a09_empList_0530.jsp",
				type:"post",
				dataType:"html",
				data:sendData,
				success:function(empList){
					$("#show").html(empList);
				}				
			});
		});
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<h1>사원 리스트</h1>
	<table>
		<tr>
			<td>사원명</td><td><input name="ename"/></td>
		</tr>
		<tr>
			<td>직책</td><td><input name="job"/></td>
		</tr>			
	</table>
	<div id="show"></div>
</body>
</html>