/* 3) mvc���� ��û���� �޾Ƽ� ó���ϱ�
 	- A05_MVC
 	- urlPatterns = /mvc05
 	- ��û��  name = apple&price=3000&cnt=3
 	- ���ó���� ���Ǹ�:@@@ ����:@@ ����:@@ �Ѱ�:@@@*/
package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A05_MVC_0523
 */
@WebServlet(name = "mvc05", urlPatterns = { "/mvc05" })
public class A05_MVC_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A05_MVC_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
/*		String name=request.getParameter("name");
		String price = request.getParameter("price");
		String cnt = request.getParameter("cnt");
		int sum = Integer.parseInt(price)*Integer.parseInt(cnt);
		System.out.println("���Ǹ�: "+name);
		System.out.println("����: "+price);
		System.out.println("����: "+cnt);
		System.out.println("�Ѱ���: "+(sum));*/
		
		String jpgPage= "/c01_mvc/c03_mvc_0523.jsp";
		String[] s1 = {"���", "3000", "15"};
		request.setAttribute("name", s1[0]);
		request.setAttribute("price", s1[1]);
		request.setAttribute("cnt", s1[2]);
		RequestDispatcher rd = request.getRequestDispatcher(jpgPage);
		rd.forward(request, response);
	}

}
