/*
 # MVC ���ϰ� ��2 ����
 1. server(�����ø����̼� ����)
 	1) controller : ����
 	2) �� : ejb ���� �����Ͻ� ���� ó�� Ŭ����, �ڹٺ�
 	3) �� : jsp
 	
 2. client(�����)
	- �� ������ ���� �޴����� ���� ���

 3) Controller �� ó��
 	1) servlet���� ����
 	2) service(HttpServletRequest request
 		- request : ��ûó��
 	3) model ȣ���� ���� ����(service)
 		- view�ܿ� �Ѱ��� �ٽ� ������ ó��(VO, ArrayList<VO>)
 		- request, session.setAttribute("���ȣ��key", �� ��ü);
 	4) view ȣ��
 		- jspȣ�� ó��
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
 * Servlet implementation class A02_SVL_xml_0523
 */
@WebServlet(name = "a02_xml", urlPatterns = { "/a02_xml" })
public class A02_SVL_xml_0523 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_SVL_xml_0523() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body><h1>Hello World!web.xml</h1></body></html>");
	}

}
/*
 # mvc Proc
 1) http://localhost:7080/jsp_exp/mvc02	
 2) /mvc02 : servlet ȣ��
 	- web.xml(����� servlet)
		<url-pattern>/call</url-pattern>
 	- annotaion
*/
