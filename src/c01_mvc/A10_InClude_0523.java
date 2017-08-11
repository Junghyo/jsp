package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A10_InClude_0523
 */
@WebServlet(name = "include", urlPatterns = { "/include" })
public class A10_InClude_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A10_InClude_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String part=request.getParameter("part");
		String page="/d01_pageModule/a10_tot_0524.jsp";
		if(part!=null){
		if(part.equals("top")) page="/d01_pageModule/a10_top_0524.jsp";
		if(part.equals("left")) page="/d01_pageModule/a10_left_0524.jsp";
		if(part.equals("main")) page="/d01_pageModule/a10_main_0524.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
