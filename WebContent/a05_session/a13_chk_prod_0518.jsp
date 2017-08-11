<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="<%=path%>/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
# 세션 처리 확인예제
구매할 내용
물건명[ @@@ ]
[재고확인]
---> DB 물건을 확인하여 현재 물건이 등록된 물건이면 session으로 처리 후 물건명과 재고 건수를 표시.
	 없으면 물건이 없습니다. 다시 확인하세요. 초기 page 이동.
*/
	$(document).ready(function(){

	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<form method="post" action="a14_chk_proc_0518.jsp">
		<h2>구매할 내용</h2>
		<input type="hidden" name="proc" value="check">
		<table border=1 align="center">
			<tr>
				<th>물건명</th>
				<th>
					<select name = "prod">
						<option>APPLE</option>
						<option>BANANA</option>
						<option>ORANGE</option>
						<option>PINEAPPLE</option>
					</select>
				</th>	
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="재고확인"></th>
			</tr>
		</table>
	</form>
</body>
</html>