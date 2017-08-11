/*
 # 목표
 1) Servlet을 사용하여 화면 구현을 할 수 있다.
 2) MVC에 각 기능적 분리를 알고 해당 기능 내용에 맞게 구현할 수 있다.
 3) Controller에서 사용하는 기능 내용에 대한 코딩 내용과 활요되는 클래스들을 안다.
 4) Model단에서 이용되는 개념을 알고 View단에 넘기는 객체와 View단에서 전달받은 내용을 처리하는 방법을 안다.
 5) MVC를 활용하여 DB에 접속하여 화면단에서 출력할 수 있다.
*/

/*
 # 생각해봅시다.
 1) 웹 프로그램에서 기능적 분리는 어느 단계에서 그 효율성을 발휘할 수 있을까?
 - 요청내용 범위, 재활용성의 필요
 
 2) 핵심 데이터라는 개념과 model은 어떤 연관관계가 있는가?
*/

/*
 # MVC
 1) jsp에서 웹 어플리케이션 구조를 Model, View, Controller로 분리시켜
       기능적 분리를 통해 보다 효율적인 개발 방법을 만들어 가는 패턴을 말한다.
    Model2라고도 지칭한다.
   
 2) 모델1
  	- jsp화면에서 요청, db접속, 화면단 처리를 모두하는 것을 말한다. 
  	   재활용성과 업무분담이 취약해서 작은 page를 만들 때만 주로 활용된다.
  	   
 3) 모델2
 	- 기능적 분리(Servlet-Controller, 비지니스로직-Model, 화면단구현(jsp)-View)
  
 # Servlet
 1) 웹브라우저의 요청과 해당 내용을 자바프로그램으로 처리하는 웹처리 클래스를 말한다.
 2) 처리과정
 	- 클라이언트가 주소를 통해서 요청을 하면 servlet에서 요청내용을 doGet(), doPost() 메서드를 통해서 받는다.
 	  HttpServletRequest를 통해서 요청 내용을 parameter값으로 받는다.
 	- 요청 내용을 조건을 통해서 분석하여 view단에 넘겨질 모델 객체를 만드는 요청을 한다.
 	- service단에서 넘겨온 핵심 Model 객체내용을 jsp(View)로 전달하여 요청내용을  처리한다.
 
*/
package b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01_SVL_Start_0523
 * http://localhost:7080/jsp_exp/a01_start
 * 서블릿 객체 호출
 */
@WebServlet(name = "a01_start", urlPatterns = { "/a01_start" })
public class A01_SVL_Start_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_SVL_Start_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		화면
		response.setContentType("text/html; charset=UTF-8");
//		출력 내용. Stream으로 브라우저에 전달
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>Hello World!</h1></body></html>");
	}

}
