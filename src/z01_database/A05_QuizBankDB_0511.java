package z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import z02_vo.Quizbank;

public class A05_QuizBankDB_0511 {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	private void setCon() throws SQLException, ClassNotFoundException{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger");
	}
	
//	검색메서드
	public ArrayList<Quizbank> search(Quizbank sch){
		ArrayList<Quizbank> list = new ArrayList<Quizbank>();
		try {
			setCon();
//			문자열?와 연결? 구분하기 위하여 '%'||?||'%'		
			String sql = "SELECT * FROM QUIZBANK "+"WHERE QUE LIKE '%'||?||'%' "+"AND CORANSW LIKE '%'||?||'%' ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getJque());
			pstmt.setString(2, sch.getJqueType());
			rs = pstmt.executeQuery();
			Quizbank qb = null;
			while(rs.next()){
				qb = new Quizbank();
				qb.setJno(rs.getInt("no"));
				qb.setJque(rs.getString("que"));
				qb.setJcoransw(rs.getString("coransw"));
				qb.setJqueType(rs.getString("que_Type"));
				list.add(qb);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if(rs!=null){
					rs.close();
				}
				if(pstmt!=null){
					pstmt.close();
				}
				if(con!=null){
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Quizbank sch = new Quizbank();
		sch.setJque("호");
		sch.setJcoransw("");
		System.out.println(new A05_QuizBankDB_0511().search(sch).size());
	}

}
