<!-- 
 # 자바빈이란?
 1) 자바빈 : 데이터를 표현하는 것을 목적으로 하는 자바 클래스
  - 자바빈 규약에 따르는 클래스를 자바빈이라고 부르며 setXXX, getXXX 메서드로 구성된다.
  
 2) 자바빈 프로퍼티(property)
  - 자바빈에 저장되어 있는 값을 나타낸다.
  	public void setAge(int val) ==> age
  	public int getAge()
  
  - 프로퍼티 타입 boolean 경우 get 대신 is를 앞에 붙일 수 있다.
    public void setPass(booelan val)
    public boolean isPass()
   
  - 읽기 전용 프로퍼티 : get 또는 is메서드만 존재
  
  - 읽기/쓰기 전용 프로퍼티 : get/set 메서드 존재
 
  - 배열처리
    public void setPass(boolean val)
    public int[] getCheck()


 # jsp:useBean 으로 자바객체
 1) jsp:useBean 액션 tag를 사용하여 객체 생성하기
 	MemberBean mb = new MemberBean();
 	
  - jsp:useBean id="mb" class="package.MemberBean"
  
 2) jsp:useBean 속성1="속성값1", 속성2="속성값2",
  - id : 자바빈 객체에 접근할 떄 사용할 이름 명시
  - class : package명 포함한 자바빈 클래스 지칭
  - scope : 객체가 저장될 영역(범위)을 지정한다. page(default)/request/session/application
  
 3) property 활용
    mb.setId("himan")
  - jsp:setProperty name="mb" property="id" value="himan"
  	mb.getId()
  - jsp:getProperty name="mb" property="id"

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

	});
</script>
<style type="text/css">

</style>
</head>
<!-- 빈클래스 선언과 프로퍼티 활용
 MemberBean mb = new MemberBean();
 -->
	<jsp:useBean id="mb" class="z02_vo.MemberBean"></jsp:useBean>
	
<!-- setProperty 활용
 mb.setId("himan");
 -->
 	<jsp:setProperty property="id" name="mb" value="himan"/>	
<body>
	<h2>빈에 있는 id값 : <jsp:getProperty property="id" name="mb"/></h2>
</body>
</html>
