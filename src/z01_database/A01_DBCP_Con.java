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
//			initCtx에서 lookup메서드를 이용해서 "java:comp/env"에 해당하는 객체 호출
			Context evnCtx = (Context)initCtx.lookup("java:comp/env");
			
//			Connection Pool
			DataSource ds = (DataSource)evnCtx.lookup("jdbc/orcl");
			
//			커넥션 풀을 통해 커넥션 가져오기		
			con = ds.getConnection();	
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
//		커넥션 풀을 통해 커넥션 가져오기		
		
		return con;
		
	}
}
