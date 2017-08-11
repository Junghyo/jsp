package z01_database;
//z01_database.A03_DeptDB_0511
import java.sql.*;
import java.util.ArrayList;

import z02_vo.Dept;

public class A03_DeptDB_0511 {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url ="jdbc:oracle:thin:@localhost:1521:xe";
	String query;
	private void setCon() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger" );
	}
	public ArrayList<Dept> deptList(){
		ArrayList<Dept> list = new ArrayList<Dept>();
		try {
			setCon();
			query = "SELECT * FROM DEPT";
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			Dept dept = null;
			while( rs.next() ){
				dept = new Dept();
				dept.setJdeptno(Integer.toString(rs.getInt("deptno")));
				dept.setJdname(rs.getString("dname"));
				dept.setJloc(rs.getString("loc"));
				list.add(dept);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){
					rs.close();
				}
				if(stmt!=null){
					stmt.close();
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
	public ArrayList<Dept> searchPre(Dept sch){
		ArrayList<Dept> list = new ArrayList<Dept>();
		try {
			setCon();
			query = "SELECT * FROM DEPT "+"WHERE DEPTNO LIKE '%'||?||'%' "+"AND DNAME LIKE '%'||?||'%' "+"AND LOC LIKE '%'||?||'%' ";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, sch.getJdeptno());
			pstmt.setString(2, sch.getJdname());
			pstmt.setString(3, sch.getJloc());
			rs = pstmt.executeQuery();
			System.out.println(query);
			Dept data = null;
			while( rs.next() ){
				data = new Dept();
				data.setJdeptno(Integer.toString(rs.getInt("deptno")));
				data.setJdname(rs.getString("dname"));
				data.setJloc(rs.getString("loc"));
				list.add(data);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null){
					rs.close();
				}
				if(pstmt!=null){
					pstmt.close();
				}
				if(con!=null){
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
		
	}
	public void insert(Dept ins){
		try {
			setCon();
			query="INSERT INTO DEPT VALUES "+"(?, ?, ?)";
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, ins.getJdeptno());
			pstmt.setString(2, ins.getJdname());
			pstmt.setString(3, ins.getJloc());
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
		} finally {
			try {
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
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A03_DeptDB_0511 db = new A03_DeptDB_0511();
		Dept sch = new Dept();
			for(Dept data : db.deptList()){
				System.out.print(data.getJdeptno()+"\t");
				System.out.print(data.getJdname()+"\t");
				System.out.print(data.getJloc()+"\n");
			}
			
			for(Dept data : db.searchPre(sch)){
				System.out.print(data.getJdeptno()+"\t");
				System.out.print(data.getJdname()+"\t");
				System.out.print(data.getJloc()+"\n");
			}
	}

}
