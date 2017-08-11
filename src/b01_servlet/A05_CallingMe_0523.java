/*
1) web.xml 통한 servlet 호출하기
 	- jspexp.b01_servlet.A05_CallingMe.java
 	- url-pattern : /callingme
 	- 화면에 ^^불렀어요?
*/ 	
package b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class A05_CallingMe_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public A05_CallingMe_0523() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.print("<html><body><h1>화면에 호출합니다.</h1></body></html>");
	}

}

