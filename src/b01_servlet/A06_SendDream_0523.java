/* 2) annotation�� ���� servlet ȣ���ϱ�
 	- jspexp.b01_servlet.A06_SendDream.java
 	@WebServlet(name = "a06_snd", urlPatterns = { "/sendDream" })
 	- ȭ�鿡 �����ڷ� MVC servlet ����!*/
package b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A06_SendDream_0523
 */
@WebServlet(name = "a06_snd", urlPatterns = { "/sendDream" })
public class A06_SendDream_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A06_SendDream_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		pw.print("<html><body><h1>ȭ�鿡 �����ڷ� MVC servlet ����!</h1></body></html>");
	}

}
