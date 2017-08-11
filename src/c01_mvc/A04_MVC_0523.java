package c01_mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_MVC_0523
 */
@WebServlet(name = "mvc04", urlPatterns = { "/mvc04" })
public class A04_MVC_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A04_MVC_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

// 		urlPatterns = {"/mvc04"}
// 		http://localhost:7080/jsp_exp/mvc04?num01=77&num02=55&name=himan : get���
// 		1. ��û�� ó��
		String num01 = request.getParameter("num01");
		String num02 = request.getParameter("num02");
		String name = request.getParameter("name");
//		2. model(�����Ͻ�����)		
		int sum = Integer.parseInt(num01)+Integer.parseInt(num02);
		System.out.println(num01+"+"+num02+"="+sum);
		System.out.println("mvc04 ȣ��! num01: "+num01);
		System.out.println("mvc04 ȣ��! name: "+name);
	}

}
/*
 # ����
 1) web.xml ���� servlet ȣ���ϱ�
 	- jspexp.b01_servlet.A05_CallingMe.java
 	- url-pattern : /callingme
 	- ȭ�鿡 ^^�ҷ����?
 	
 2) annotation�� ���� servlet ȣ���ϱ�
 	- jspexp.b01_servlet.A06_SendDream.java
 	@WebServlet(name = "a06_snd", urlPatterns = { "/sendDream" })
 	- ȭ�鿡 �����ڷ� MVC servlet ����!
 	
 3) mvc���� ��û���� �޾Ƽ� ó���ϱ�
 	- A05_MVC
 	- urlPatterns = /mvc05
 	- ��û��  name = apple&price=3000&cnt=3
 	- ���ó���� ���Ǹ�:@@@ ����:@@ ����:@@ �Ѱ�:@@@
*/