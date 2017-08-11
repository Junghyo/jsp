package c01_mvc;

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
 * Servlet implementation class B03_ShopProdList_0525
 */
@WebServlet(name = "prodList", urlPatterns = { "/prodList" })
public class B03_ShopProdList_0525 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B03_ShopProdList_0525() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ctrl=request.getParameter("ctrl");
		Cookie[] cookies = request.getCookies();
		ArrayList<Code> ckList = new ArrayList<Code>();
		Code cd = null;
		int appleCnt=0;
		int bananaCnt=0;
		int strawberryCnt=0;
		int tot=0;
//		현재 쿠키값이 있을 경우
		if(cookies!=null && cookies.length>0){
			for(Cookie c: cookies){
				if(ctrl!=null && ctrl.equals("del")){
					c.setMaxAge(0);
					response.addCookie(c);
//				productXXX로 만들어진 쿠키값만 가져오기
				}else if(c.getName().length()>=7 && c.getName().substring(0,7).equals("product")){
					cd = new Code();
					cd.setName(c.getName());
					cd.setValue(c.getValue());
					if(c.getValue().equals("apple")) appleCnt++;
					if(c.getValue().equals("banana")) bananaCnt++;
					if(c.getValue().equals("strawberry")) strawberryCnt++;
					ckList.add(cd);
				}
			}
		}
		System.out.println("담긴 쿠키 갯수: "+ckList.size());
		request.setAttribute("appleCnt", appleCnt);
		request.setAttribute("bananaCnt", bananaCnt);
		request.setAttribute("strawberryCnt", strawberryCnt);
		request.setAttribute("ckList", ckList);
		String page="/d02_cookie/a11_cart_0525.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
