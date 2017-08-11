/*
 # 모델2 물건구매 쿠키
 1) 초기화면
 	- 물건 구매 리스트
 	- 사과[장바구니담기]
 	- 바나나[장바구니담기]
 	- 딸기[장바구니담기]
 	- [현재 장바구니 확인]
 
 2) Controller 처리
 	- 초기화면
 	- 장바구니 담기를 클릭시, 해당 물건 Cookie담기	
*/
package c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class B02_ShoppingCookie_0525
 */
@WebServlet(name = "shop", urlPatterns = { "/shop" })
public class B02_ShoppingCookie_0525 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public B02_ShoppingCookie_0525() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

//		1. 요청처리
		String product = request.getParameter("product");
		System.out.println("넘겨온 물건: "+product);
		
//		현재 가지고 있는 쿠키 갯수
		int cookieCnt = 0;
		if(request.getCookies()!=null){
			cookieCnt=request.getCookies().length;
		}
		if(product!=null&&!product.equals("")){
//			쿠키의 이름옆에 numbering처리
			Cookie cookie = new Cookie("product"+cookieCnt, product);
			response.addCookie(cookie);
		}
		String page = "/d02_cookie/a10_shop_0525.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
