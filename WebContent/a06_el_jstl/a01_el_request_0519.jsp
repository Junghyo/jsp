<!--  
 # 목표
	- EL(expression language)이 jsp에서 활용하는 이유와 방법을 안다.
	- 요청값을 처리할 때 효과적인 EL을 활용하여 프로그래밍 할 수 있다.
	- EL을 통한 산수 및 논리 연산 처리를 할 줄 안다.
	- JSTL의 개념과 기본적인 활용 방법을 안다.
	- JSTL에서 page scope(page, request, session, application)별로 데이터를 JSP단에서 저장할 수 있고 활용할 수 있다. 
	- JSTL을 통해서 반복문, 조건문을 처리할 수 있다.
	- JSTL에 사용되는 날짜, 숫자에 대한 format형식을 효과적으로 처리할 수 있다.

 # 생각해봅시다.
	- jsp에서 사용한 스크립트릿(scriplet) < %%>, 익스프레션(expression) < %=%> 가독성과 사용에 어려움이 있지 않은가?
	- el이나 jstl을 활용하면서 변수를 지정하는데 어떤 범위에 대한 처리를 할 수 있을까?
	- session값이나 요청값에 대한 type casting, null은 el에서 해결해 줄 수 있는가?
		 
 # EL
	1) EL(Expression Language) 표현언어는 JSTL(Jsp Standard Tag Library)1.0 규약에
	    소개된 내용으로 jsp 2.0 버전부터 표현 언어로 포함되었다.

	2) 새로운 스크립트 언어로 jsp 기본문법 보완

	3) 기능
	 - jsp의 네가지 기본 객체가 제공하는 영역 속성 사용
	 - 집합 객체에 대한 접근 방법 제공
	 - 수치연산, 관계 연산, 논리 연산자 제공
	 - 자바클래스, 메서드 호출 기능 제공
	 - 표현언어 기본 객체 제공

	4) 기본문법
	 - $ {표현식}
	ex) 
		jsp 경우(scriplet)											EL 
	 Person p = new Person(); 
	 p.setName("Ronaldo");
	 session.setAttribute("person",p);					====>	$ {person.name}
	 Person person = session.getAttribute("person");
	 if(person!=null){ < %= person.getName() %>}

	5) 요청값 처리
	ex)
		jsp															EL
	 String id = request.getParameter("id");
	 if(id!=null){   }									====>	${param.id}
	 필요한 type(숫자) 변환
-->
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
 
	$(document).ready(function(){

	});
/*
 확인예제
 1) 요청값 처리 기본
 	커피프린스에서
 	구매할 커피		가격			개수
 	@@@				@@@			@@@
*/
</script>
<style type="text/css">

</style>
</head>
<body>
	<form method="post">
		좋아하는 선수: <input name="favPlayer" ><br>
		<input name="num01" size="2">+
		<input name="num02" size="2">
		<button type="submit">확인</button>
	</form>
	입력된 단어: ${param.favPlayer }<br>
	연산값:${param.num01 }+${param.num02 }=${param.num01+param.num02 }
	

</body>
</html>

