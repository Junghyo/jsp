package z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z02_vo.Student_0511;

public class A06_StudentDB_0511 {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String sql = "SELECT * FROM STUDENT "+"WHERE NAME LIKE '%'||?||'%' "+"AND GRADE LIKE '%'||?||'%' ";
	
	private void setCon() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger");
	}
	
	public ArrayList<Student_0511> searchPre(Student_0511 sch){
		ArrayList<Student_0511> list = new ArrayList<Student_0511>();
		try {
			setCon();
			sql = "SELECT * FROM STUDENT "+"WHERE NAME LIKE '%'||?||'%' "+"AND GRADE LIKE '%'||?||'%' ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getJname());
			pstmt.setString(2, sch.getJgrade());
			rs = pstmt.executeQuery();
			System.out.println(sql);
			Student_0511 data = null;
			while( rs.next() ){
				data = new Student_0511();
				data.setJname(rs.getString("name"));
				data.setJgrade(Integer.toString(rs.getInt("grade")));
				data.setJclass(rs.getInt("class"));
				data.setJkor(rs.getInt("kor"));
				data.setJeng(rs.getInt("eng"));
				data.setJmath(rs.getInt("math"));
				list.add(data);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return list;
		
	}
	
	public void insert(Student_0511 put){
		try {
			setCon();
			sql = "INSERT INTO STUDENT VALUES(?, ?, ?, ?, ?, ?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, put.getJname());
			pstmt.setString(2, put.getJgrade());
			pstmt.setInt(3, put.getJclass());
			pstmt.setInt(4, put.getJkor());
			pstmt.setInt(5, put.getJeng());
			pstmt.setInt(6, put.getJmath());
			pstmt.executeUpdate();
			con.commit();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally{
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A06_StudentDB_0511 db = new A06_StudentDB_0511();
		Student_0511 sch = new Student_0511();
		
		
		for(Student_0511 st : db.searchPre(sch)){
			System.out.print(st.getJname()+"\t");
			System.out.print(st.getJgrade()+"\t");
			System.out.print(st.getJclass()+"\t");
			System.out.print(st.getJkor()+"\t");
			System.out.print(st.getJeng()+"\t");
			System.out.print(st.getJmath()+"\n");		
		}

	}

}

/*
 확인 예제 : 입력모듈(메서드) 만들기
 DEPT 테이블 입력모듈(1단계)
 STUDENT/테이블 입력처리(2단계)
 입력 SQL 작성 및 TEST
 메서드 만들기
 	- 연결
 	- autocommit
 	- pstmt 처리
 	- commit
*/
