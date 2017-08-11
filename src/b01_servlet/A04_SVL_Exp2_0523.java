package b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_SVL_Exp2_0523
 */
// 어노테이션. urlPatterns : http://localhost:7080/jsp_exp/call03
// 을 입력하면 현재 b01_servlet.A04_SVL_Exp2_0523을 호출하겠습니다.
@WebServlet(name = "call03", urlPatterns = { "/call03" })
public class A04_SVL_Exp2_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_SVL_Exp2_0523() {
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
		out.println("<html><body><h1>어노테이션 servlet호출</h1></body></html>");
	}

}
