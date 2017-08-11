package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z02_vo.Emp;

/**
 * Servlet implementation class A07_MVC_emp_0523
 */
@WebServlet(name = "emp_login", urlPatterns = { "/emp_login" })
public class A07_MVC_emp_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private A07_Emp_LoginService_0523 loginService;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A07_MVC_emp_0523() {
        super();
        loginService = new A07_Emp_LoginService_0523();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		언어 변경		
		request.setCharacterEncoding("utf-8");
//		1. 요청
		String ename = request.getParameter("ename")!=null?request.getParameter("ename"):"";
		String empno = (request.getParameter("empno")!=null&&
				!request.getParameter("empno").trim().equals(""))?request.getParameter("empno"):"0";
		String page = null;

//		2. 모델
//		요청 데이터 입력
		Emp sch = new Emp();
		sch.setJename(ename);
		sch.setJempno(new Integer(empno));
//		A07_Emp_LoginService_0523단에서 가져옮		
		Emp emp = loginService.check(sch);

//		3. View
		if(emp!=null){
			page="/c01_mvc/c06_emp_main_0523.jsp";
			request.setAttribute("emp", emp);
		}else{
			page="/c01_mvc/c06_emp_login_0523.jsp";
			request.setAttribute("ename", ename);
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
