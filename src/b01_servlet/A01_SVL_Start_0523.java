/*
 # ��ǥ
 1) Servlet�� ����Ͽ� ȭ�� ������ �� �� �ִ�.
 2) MVC�� �� ����� �и��� �˰� �ش� ��� ���뿡 �°� ������ �� �ִ�.
 3) Controller���� ����ϴ� ��� ���뿡 ���� �ڵ� ����� Ȱ��Ǵ� Ŭ�������� �ȴ�.
 4) Model�ܿ��� �̿�Ǵ� ������ �˰� View�ܿ� �ѱ�� ��ü�� View�ܿ��� ���޹��� ������ ó���ϴ� ����� �ȴ�.
 5) MVC�� Ȱ���Ͽ� DB�� �����Ͽ� ȭ��ܿ��� ����� �� �ִ�.
*/

/*
 # �����غ��ô�.
 1) �� ���α׷����� ����� �и��� ��� �ܰ迡�� �� ȿ������ ������ �� ������?
 - ��û���� ����, ��Ȱ�뼺�� �ʿ�
 
 2) �ٽ� �����Ͷ�� ����� model�� � �������谡 �ִ°�?
*/

/*
 # MVC
 1) jsp���� �� ���ø����̼� ������ Model, View, Controller�� �и�����
       ����� �и��� ���� ���� ȿ������ ���� ����� ����� ���� ������ ���Ѵ�.
    Model2��� ��Ī�Ѵ�.
   
 2) ��1
  	- jspȭ�鿡�� ��û, db����, ȭ��� ó���� ����ϴ� ���� ���Ѵ�. 
  	   ��Ȱ�뼺�� �����д��� ����ؼ� ���� page�� ���� ���� �ַ� Ȱ��ȴ�.
  	   
 3) ��2
 	- ����� �и�(Servlet-Controller, �����Ͻ�����-Model, ȭ��ܱ���(jsp)-View)
  
 # Servlet
 1) ���������� ��û�� �ش� ������ �ڹ����α׷����� ó���ϴ� ��ó�� Ŭ������ ���Ѵ�.
 2) ó������
 	- Ŭ���̾�Ʈ�� �ּҸ� ���ؼ� ��û�� �ϸ� servlet���� ��û������ doGet(), doPost() �޼��带 ���ؼ� �޴´�.
 	  HttpServletRequest�� ���ؼ� ��û ������ parameter������ �޴´�.
 	- ��û ������ ������ ���ؼ� �м��Ͽ� view�ܿ� �Ѱ��� �� ��ü�� ����� ��û�� �Ѵ�.
 	- service�ܿ��� �Ѱܿ� �ٽ� Model ��ü������ jsp(View)�� �����Ͽ� ��û������  ó���Ѵ�.
 
*/
package b01_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01_SVL_Start_0523
 * http://localhost:7080/jsp_exp/a01_start
 * ���� ��ü ȣ��
 */
@WebServlet(name = "a01_start", urlPatterns = { "/a01_start" })
public class A01_SVL_Start_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_SVL_Start_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		ȭ��
		response.setContentType("text/html; charset=UTF-8");
//		��� ����. Stream���� �������� ����
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>Hello World!</h1></body></html>");
	}

}
