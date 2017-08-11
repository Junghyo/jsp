package b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A03_SVL_Exp_0523
 */

public class A03_SVL_Exp_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A03_SVL_Exp_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>서블릿연습</h1></body></html>");
	}

}

/* 
 # xml을 통한 호출 
web.xml에서
<servlet> 
	<servlet-name>Callser2</servlet-name>
	<servlet-class>b01_servlet.A03_SVL_Exp_0523</servlet-class>
</servlet>
<servlet-mapping>
	<servlet-name>Callser2</servlet-name>
	<url-pattern>/call02</url-pattern>
</servlet-mapping>

http://localhost:7080/jsp_exp/call02 ---> /call02 호출 ---> callser2 호출 ---> b01_servlet.A03_SVL_Exp_0523
*/