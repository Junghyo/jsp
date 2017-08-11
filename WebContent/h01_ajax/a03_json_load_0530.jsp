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
//		json 데이터 가져오는 모듈 활용하기
		$.getJSON("item.json", function(data, status){
			$("#treeData1").append(
				"<tr>"+
				"<th>아이디</th>"+
				"<th>이름</th>"+
				"<th>가격</th>"+
				"<th>설명</th>"+
				"</tr>"				
			);
			$.each(data, function(){
				$("#treeData1").append(
					"<tr>"+
					"<td>"+this.id+"</td>"+
					"<td>"+this.name+"</td>"+
					"<td>"+this.price+"</td>"+
					"<td>"+this.description+"</td>"+
					"</tr>"
				);	
			});
		});
		$.ajax({
			url:"player.json",
			dataType:"json",
			success:function(data){
				$.each(data, function(){
					$("#treeData3").append(
							"<tr>"+
							"<th>"+this.name+"</th>"+
							"<th>"+this.position+"</th>"+
							"<th>"+this.birth+"</th>"+
							"<th>"+this.uniformNumber+"</th>"+
							"</tr>"
					);
				});
			}
		})
	});
	
	$(function(){
		$.getJSON("player.json", function(data, textStatus){
			$("#treeData2").append(
				"<tr>"+
				"<th>NAME</th>"+
				"<th>POSITION</th>"+
				"<th>BIRTH</th>"+
				"<th>NUMBER</th>"+
				"</tr>"		
			);
			$.each(data, function(){
				$("#treeData2").append(
						"<tr>"+
						"<th>"+this.name+"</th>"+
						"<th>"+this.position+"</th>"+
						"<th>"+this.birth+"</th>"+
						"<th>"+this.uniformNumber+"</th>"+
						"</tr>"
				);
			});
		});
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<table id="treeData1" border=1>
	</table>
	<table id="treeData2" border=1>
	</table>
	<table id="treeData3" border=1>
	</table>
</body>
</html>
