package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01_MVC_0523
 */
@WebServlet(name = "mvc01", urlPatterns = { "/mvc01" })
public class A01_MVC_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_MVC_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		1. ��û ���뿡 ���� ó��
		
//		2. model�� ó��(view�ܿ� �ٽ�)
		String name = "Ronaldo";
//		view�� ����ó��		
		request.setAttribute("name", name);
		
//		3. view�� ó��(jsp ȣ��) : request, response�� ����.
		String jspPage = "/c01_mvc/c01_mvc_0523.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(jspPage);
		rd.forward(request, response);
	}

}
/*
 # Ȯ�ο���
 Controller : A02_MVC.java
 Model : favFood="Pizza"
 View : c02_mvc.jsp
 - ���� ���� �����ϴ� ���� : @@@
 product a = new product(aaa,aaa,aa)
*/
