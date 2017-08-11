package c01_mvc;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
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
 * Servlet implementation class B01_CookieExp_0525
 */
@WebServlet(name = "getcookie01", urlPatterns = { "/getcookie01" })
public class B01_CookieExp_0525 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B01_CookieExp_0525() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie cookie1 = new Cookie("name1","himan");
		Cookie cookie2 = new Cookie("name2",
						URLEncoder.encode("홍길동","UTF-8"));
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		Cookie[] cookies = request.getCookies();
		ArrayList<Code> ckList = new ArrayList<Code>();
		Code cd = null;
		if(cookies!=null && cookies.length>0){
			for(Cookie c : cookies){
				if(!c.getName().equals("JSESSIONID")){
					cd = new Code();
					cd.setName(c.getName());
					cd.setValue(URLDecoder.decode(c.getValue(),"UTF-8"));
					ckList.add(cd);
				}
			}
		}
		request.setAttribute("ckList", ckList);
		String page = "/d02_cookie/a03_mvcCookie_0525.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
/*
 # 쿠키값 변경 삭제
 1) 쿠키는 해당 값을 검색해서 재 등록함으로 쿠키값을 변경처리할 수 있다.
 	- if(cookie.getName().equals("name")){
   		Cookie cookie = new Cookie(name, value);
   		response.addCookie(cookie);
   }
 
 2) 쿠키삭제
 	- setMaxAge(0) : 쿠키의 주기를 0으로 설정 후, 할당.
*/