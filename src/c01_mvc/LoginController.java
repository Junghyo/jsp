package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z02_vo.Members;

/**
 * Servlet implementation class exercise
 */
@WebServlet("/exercise")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private LoginService service;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        service = new LoginService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id")!=null?request.getParameter("id"):"";
		String pwd = request.getParameter("pwd")!=null?request.getParameter("pwd"):"";
		String page = null;
		Members mem = new Members();
		mem.setJid(id);
		mem.setJpwd(pwd);
		Members vo = service.check(mem);
		if(vo!=null){
			page="/c01_mvc/c05_main_0523.jsp";
			request.setAttribute("mem", vo);
		}else{
			page="/c01_mvc/c04_login_0523.jsp";
			request.setAttribute("id", id);
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}

