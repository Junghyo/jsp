package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import z02_vo.Products;

/**
 * Servlet implementation class A02_MVC_0523
 */
@WebServlet(name = "mvc02", urlPatterns = { "/mvc02" })


public class A02_MVC_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_MVC_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String favFood = "짜장면";
		String jspPage = "/c01_mvc/c02_mvc_0523.jsp";
		Products p1 = new Products("사과", 4000, 3);
		request.setAttribute("product", p1);
		request.setAttribute("food", favFood);
		RequestDispatcher rd = request.getRequestDispatcher(jspPage);
		rd.forward(request, response);
	}

}
