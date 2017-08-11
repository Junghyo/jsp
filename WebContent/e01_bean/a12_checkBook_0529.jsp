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
<body>
	<jsp:useBean id="book" class="z02_vo.BookBean"></jsp:useBean>
	<jsp:setProperty property="*" name="book"/>
	<h2>도서이름: ${book.name }</h2>
	<h2>출판사: ${book.publisher }</h2>
	<h2>가격: ${book.price }</h2>
	<h2>출판일: ${book.publishDate }</h2>
	<h2>${book.name }[${book.publisher }](${book.price }원)-${book.publishDate }</h2>
</body>
</html>
<!-- 
 # bean을 이용한 인증 및 회원등록
 로그인page					bean session 값
 id:[]						[이름]님 환영합니다.
 pwd:[]
 [확인][회원등록]

 -->
 
 <!-- 
  # connection pool & JNDI
  1) 라이브러리 설정(WEB-INF/lib)
   - tomcat-dbcp.jar
 
  2) WAS의 context.xml에 다음 같이 설정 
   - Resource 속성 설정
   - auth = "Container"
   - name = "jdbc/orcl"
   - driverClassName = "oracle.jdbc.driver.OracleDriver"
   - type = "javax.sql.DataSource"
   - url = "jdbc:oracle:thin:@localhost:1521:xe"
   - username = "scott"
   - password = "tiger"
   - loginTimeout = "10" 	: 연결이 끈어지는 시간
   - maxActive = "50" 		: 최대 연결 가능 connection 수
   - maxIdle = "20" 		: Connection pool유지를 위한 최대 대기 connection 숫자
   - maxWait = "5000"		: 사용 가능한 커넥션이 없을 때 커넥션 회수를 기다리는 시간(1/1000초)
   - testOnBorrow  			: db에 test를 해볼 것인지 여부
   
  # 구조
  Controller  →	 Service  →	 DAO
  							- db연결부분 JNDI개념을 처리
  								↓				↑
  JNDI(Java Naming Directory Interface)	 →	 Connection Pool
  
  JNDI : 디렉토리 서비스에서 데이터 및 객체를 발견하고 참고(lookup)하기 위한 자바API. 외부 객체를 가져오기 위한 기술
  
  # web.xml
  resource-ref
  - decription : 설명
  - res-ref-name : context.xml에 설정한 이름 = resource name="jdbc/orcl" 동일
  - res-type : javax.sql.DataSource
  - res-auth : Container
  	
  -->