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
		$.getJSON("player.json", function(data, status){
			$("#a").append(
				"<tr>"+
				"<th>이름</th>"+
				"<th>포지션</th>"+
				"<th>생년월일</th>"+
				"<th>등번호</th>"+
				"</tr>"
			);
			$.each(data, function(){
				$("#a").append(
						"<tr>"+
						"<th>"+this.name+"</th>"+
						"<th>"+this.position+"</th>"+
						"<th>"+this.birth+"</th>"+
						"<th>"+this.uniformNumber+"</th>"+
						"</tr>"
				);
			});
		});
		$("button").click(function(){
			$.ajax({
				url:"player.txt",
				type:"get",
				dataType:"text",
				success:function(json){
					var list = $.parseJSON(json);
					var listLen = list.length;
					var temp="";
					for(var i=0; i<listLen; i++){
						temp+="<tr>"+
							  "<th>"+list[i].name+"</th>"+
							  "<th>"+list[i].position+"</th>"+
							  "<th>"+list[i].birth+"</th>"+
							  "<th>"+list[i].uniformNumber+"</th>"+
							  "<tr>";
					}
					$("#before").append(json);
					$("#after").append(temp);
				}
				
			})
		})

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<table id="a" border=1>
	</table>
	<br><br>
	<button>parseJSON</button>
	<h1>사용한 json</h1>
	<h2 id="before"></h2>
	<h1>Pasing 후 문자열 표현</h1>
	<table id="after">
	</table>
</body>
</html>