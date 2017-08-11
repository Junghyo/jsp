package c01_mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_MVC_0523
 */
@WebServlet(name = "mvc04", urlPatterns = { "/mvc04" })
public class A04_MVC_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_MVC_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

// 		urlPatterns = {"/mvc04"}
// 		http://localhost:7080/jsp_exp/mvc04?num01=77&num02=55&name=himan : get방식
// 		1. 요청값 처리
		String num01 = request.getParameter("num01");
		String num02 = request.getParameter("num02");
		String name = request.getParameter("name");
//		2. model(비지니스로직)		
		int sum = Integer.parseInt(num01)+Integer.parseInt(num02);
		System.out.println(num01+"+"+num02+"="+sum);
		System.out.println("mvc04 호출! num01: "+num01);
		System.out.println("mvc04 호출! name: "+name);
	}

}
/*
 # 과제
 1) web.xml 통한 servlet 호출하기
 	- jspexp.b01_servlet.A05_CallingMe.java
 	- url-pattern : /callingme
 	- 화면에 ^^불렀어요?
 	
 2) annotation을 통한 servlet 호출하기
 	- jspexp.b01_servlet.A06_SendDream.java
 	@WebServlet(name = "a06_snd", urlPatterns = { "/sendDream" })
 	- 화면에 개발자로 MVC servlet 시작!
 	
 3) mvc에서 요청값을 받아서 처리하기
 	- A05_MVC
 	- urlPatterns = /mvc05
 	- 요청값  name = apple&price=3000&cnt=3
 	- 출력처리로 물건명:@@@ 가격:@@ 갯수:@@ 총계:@@@
*/