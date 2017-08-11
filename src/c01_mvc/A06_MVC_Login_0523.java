/*
 # MVC 패턴으로 DB list 처리
 1) Controller (Servlet)
 	- 요청 처리, service(모델호출처리), View단 호출
 	- 조정자(요청내용 확인해서 Model단 처리호출, View 호출)
 	
 2) Model
 	- view단 넘길 핵심 data 연결 후 결과값
 	- 비지니스로직처리한 결과값
 	
 3) View(화면처리)
 	- html, css, javascript와 넘겨온 model 데이터에 대한 처리

 
 # Controller에서 처리할 내용
 1) 요청값 받기
 - request.getParameter("name값") ==> ?name=himan&age=25
 
 2) model 호출하기 및 view단 처리를 위한 작업
 - service단(package, service 클래스) 호출
   if, loop, database연결을 통해 
 
 3) view단 호출
 	- RequestDispatcher의 forward(request, response)
 	- request.getRequestDispatcher("호출할 jspPage")
 	- view단에 model을 넘기면서 jsp페이지 호출


 # MVC를 통한 login
 1) Controller를 통해서 초기 page 호출.
 	- 요청값이 없을 때 login 호출 페이지
 	
 	┌──페이지 호출──┐			┌──Controller──┐
 	│ (요청값X)    │		====>   │ 요청값 확인      │
	└──────────────┘			└──────────────┘
	┌──페이지 호출──┐			1. 없을 떄 초기 jsp호출
	│ (요청값O)    │		<====	View : login.jsp
    │  login.jsp   │			
	└──────────────┘	====>	( 다시 Controller에 전송, Model단 처리[DB] )	
				
	┌──main 화면──┐				2. 요청값이 있을 경우 main.jsp 호출
	│  @@@님 환영   │		<====	View : main.jsp
    └─────────────┘

*/		
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
 * Servlet implementation class A06_MVC_Login_0523
 */
@WebServlet(name = "login", urlPatterns = { "/login" })
public class A06_MVC_Login_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A06_MVC_Login_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("login Controller 호출");
//		1. 요청
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
//		2. model호출 후, 결과값
		boolean goMain=false;
		
//		id와 password가 입력된 경우		
		if(id!=null && pwd!=null){
//			유효한 id와 password가 입력된 경우			
/*			if(id.equals("himan") && pwd.equals("7777")){
				goMain=true;
				view단에 넘길 데이터				
			}*/
			A06_Service_0523 service = new  A06_Service_0523();
			Members vo = new Members();
			vo.setJid(id);
			vo.setJpwd(pwd);
			if(service.isValid(vo)){
				goMain=true;
			}
			request.setAttribute("id", vo);
		}
//		3. View단 호출
		System.out.println("id : "+id);
		String page = "";
//		id값이 없을 때 초기 page 호출(login.jsp)		
/*		if(id==null||id.trim().equals("")){
			page="/c01_mvc/c04_login_0523.jsp";
		}else{
			id가 있더라도 DB check해서 model 처리
			page="/c01_mvc/c05_main_0523.jsp";
		}*/

//		메인페이지 갈 수 있을 때.
		if(goMain){
			page="/c01_mvc/c05_main_0523.jsp";
		}else{
			page="/c01_mvc/c04_login_0523.jsp";
		}
		System.out.println("이동할 page: "+page);
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
/*
 # View단
 <form
 1) action
 	- 생략 후, submit 클릭 시, 현재 page를 호출한 controller/page를 default로 전송
 	- 내용이 있으면 해당 controller 나 page로 전송
*/

/*
 # MVC DB연동 확인예제
 vision 솔루션에 오신 것을 환영합니다.
 이름과 사번을 입력하세요.
 이름:[	] 사번:[		]	[확인]
 1) Servlet Controller 작성
 2) 위에 초기화면 호출
 3) 사번을 check하여 입력한 값이 있으면
 4) @@@님 vision 솔루션인트라넷에 오신 것을 환영합니다.
 5) 없으면 초기 page로 이동

*/