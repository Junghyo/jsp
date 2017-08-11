package z01_database;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
// z01_database.A01_DBCP_Con.getCon();
public class A01_DBCP_Con {
	public static Connection getCon() throws SQLException{
		Connection con = null;
//		JNDI
		try {
			Context initCtx = new InitialContext();
//			initCtx���� lookup�޼��带 �̿��ؼ� "java:comp/env"�� �ش��ϴ� ��ü ȣ��
			Context evnCtx = (Context)initCtx.lookup("java:comp/env");
			
//			Connection Pool
			DataSource ds = (DataSource)evnCtx.lookup("jdbc/orcl");
			
//			Ŀ�ؼ� Ǯ�� ���� Ŀ�ؼ� ��������		
			con = ds.getConnection();	
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
//		Ŀ�ؼ� Ǯ�� ���� Ŀ�ؼ� ��������		
		
		return con;
		
	}
}
