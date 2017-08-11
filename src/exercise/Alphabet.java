package exercise;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Alphabet
 */
@WebServlet(name = "save", urlPatterns = { "/save" })
public class Alphabet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alphabet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String alphabet = request.getParameter("alphabet");
		System.out.println(alphabet);
		int cnt = 0;
		if(request.getCookies()!=null){
			cnt=request.getCookies().length;
		}
		if(alphabet!=null && !alphabet.equals("")){
			Cookie cookie = new Cookie("alphabet"+cnt, alphabet);
			response.addCookie(cookie);
		}
		
		String page = "/exercise/cookie1.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
