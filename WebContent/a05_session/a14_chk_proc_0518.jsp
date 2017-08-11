<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "z02_vo.Product"
    import = "z01_database.ProductDAO"
    %>
<%request.setCharacterEncoding("UTF-8"); 
  String path=request.getContextPath();	
%>
<%
	String proc = request.getParameter("proc");
	String prod = request.getParameter("prod");
	String count = request.getParameter("count");
	ProductDAO dao = new ProductDAO();
	Product dto = new Product();
	boolean hasInfo = false;
	
	if(proc!=null && proc.equals("check")){
		dto.setJprod(prod);
		Product vo = dao.prodInfo(dto);
		if(vo!=null){
			hasInfo = true;
			session.setAttribute("product", vo);
		}
	}
	Product info = (Product)session.getAttribute("product");
	String infoName=info.getJprod();
	int infoCnt = info.getJcount();
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
	if(!hasInfo){
		alert("해당하는 물건명이 없습니다.");
		$(location).attr("href", "a13_chk_prod_0518.jsp");
	}else if(<%=infoCnt%><=0){
		alert("해당물품의 재고가 없습니다.");
	}
</script>
<style type="text/css">

</style>
</head>
<body>
	<h2>물건명: <%=infoName %></h2>
	<h2>재고: <%=infoCnt %></h2>
</body>
</html>