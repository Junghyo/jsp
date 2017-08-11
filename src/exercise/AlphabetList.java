package exercise;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import z02_vo.Code;

/**
 * Servlet implementation class AlphabetList
 */
@WebServlet(name = "wordList", urlPatterns = { "/wordList" })
public class AlphabetList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlphabetList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "/exercise/cookie2.jsp";
		int aCnt = 0;
		int bCnt = 0;
		int cCnt = 0;
		String ctrl = request.getParameter("ctrl");
		Cookie[] cookies = request.getCookies();
		ArrayList<Code> ckList = new ArrayList<Code>();
		Code cd = null;
		if(cookies!=null && cookies.length>0){
			for(Cookie c: cookies){
				if(ctrl!=null && ctrl.equals("del")){
					c.setMaxAge(0);
					response.addCookie(c);
				}else if(c.getName().substring(0,8).equals("alphabet")){
					cd = new Code();
					cd.setName(c.getName());
					cd.setValue(c.getValue());
					if(c.getValue().equals("A")) aCnt++;
					if(c.getValue().equals("B")) bCnt++;
					if(c.getValue().equals("C")) cCnt++;
					ckList.add(cd);
				}
			}
		}
		request.setAttribute("aCnt", aCnt);
		request.setAttribute("bCnt", bCnt);
		request.setAttribute("cCnt", cCnt);
		request.setAttribute("ckList", ckList);
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
