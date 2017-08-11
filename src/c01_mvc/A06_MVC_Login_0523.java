/*
 # MVC �������� DB list ó��
 1) Controller (Servlet)
 	- ��û ó��, service(��ȣ��ó��), View�� ȣ��
 	- ������(��û���� Ȯ���ؼ� Model�� ó��ȣ��, View ȣ��)
 	
 2) Model
 	- view�� �ѱ� �ٽ� data ���� �� �����
 	- �����Ͻ�����ó���� �����
 	
 3) View(ȭ��ó��)
 	- html, css, javascript�� �Ѱܿ� model �����Ϳ� ���� ó��

 
 # Controller���� ó���� ����
 1) ��û�� �ޱ�
 - request.getParameter("name��") ==> ?name=himan&age=25
 
 2) model ȣ���ϱ� �� view�� ó���� ���� �۾�
 - service��(package, service Ŭ����) ȣ��
   if, loop, database������ ���� 
 
 3) view�� ȣ��
 	- RequestDispatcher�� forward(request, response)
 	- request.getRequestDispatcher("ȣ���� jspPage")
 	- view�ܿ� model�� �ѱ�鼭 jsp������ ȣ��


 # MVC�� ���� login
 1) Controller�� ���ؼ� �ʱ� page ȣ��.
 	- ��û���� ���� �� login ȣ�� ������
 	
 	������������ ȣ�⦡����			������Controller������
 	�� (��û��X)    ��		====>   �� ��û�� Ȯ��      ��
	��������������������������������			��������������������������������
	������������ ȣ�⦡����			1. ���� �� �ʱ� jspȣ��
	�� (��û��O)    ��		<====	View : login.jsp
    ��  login.jsp   ��			
	��������������������������������	====>	( �ٽ� Controller�� ����, Model�� ó��[DB] )	
				
	������main ȭ�馡����				2. ��û���� ���� ��� main.jsp ȣ��
	��  @@@�� ȯ��   ��		<====	View : main.jsp
    ������������������������������

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
		System.out.println("login Controller ȣ��");
//		1. ��û
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
//		2. modelȣ�� ��, �����
		boolean goMain=false;
		
//		id�� password�� �Էµ� ���		
		if(id!=null && pwd!=null){
//			��ȿ�� id�� password�� �Էµ� ���			
/*			if(id.equals("himan") && pwd.equals("7777")){
				goMain=true;
				view�ܿ� �ѱ� ������				
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
//		3. View�� ȣ��
		System.out.println("id : "+id);
		String page = "";
//		id���� ���� �� �ʱ� page ȣ��(login.jsp)		
/*		if(id==null||id.trim().equals("")){
			page="/c01_mvc/c04_login_0523.jsp";
		}else{
			id�� �ִ��� DB check�ؼ� model ó��
			page="/c01_mvc/c05_main_0523.jsp";
		}*/

//		���������� �� �� ���� ��.
		if(goMain){
			page="/c01_mvc/c05_main_0523.jsp";
		}else{
			page="/c01_mvc/c04_login_0523.jsp";
		}
		System.out.println("�̵��� page: "+page);
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
/*
 # View��
 <form
 1) action
 	- ���� ��, submit Ŭ�� ��, ���� page�� ȣ���� controller/page�� default�� ����
 	- ������ ������ �ش� controller �� page�� ����
*/

/*
 # MVC DB���� Ȯ�ο���
 vision �ַ�ǿ� ���� ���� ȯ���մϴ�.
 �̸��� ����� �Է��ϼ���.
 �̸�:[	] ���:[		]	[Ȯ��]
 1) Servlet Controller �ۼ�
 2) ���� �ʱ�ȭ�� ȣ��
 3) ����� check�Ͽ� �Է��� ���� ������
 4) @@@�� vision �ַ����Ʈ��ݿ� ���� ���� ȯ���մϴ�.
 5) ������ �ʱ� page�� �̵�

*/