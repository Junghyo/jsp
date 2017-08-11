/*
 # PreparedStatement ������ �˻�
 1) DB
 	- ���̺� ����, ������ �Է�
 	- sql ?
 	
 2)	VO ��ü
 
 3) DAO
 	- db ���� ����
 	- sql : ? ? ? ? : �����Ͱ� �� �κ�
 	- pstmt = con.preparedStatement(sql);
 	- ?�� ���εǴ� ������
 	- pstmt.setXXX(1, @@@);
*/
package z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z02_vo.Student_0511;
// z01_database.A04_StudentDB_0511
public class A04_StudentDB_0511 {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;

	private String query = "select * from STUDENT";
	

	
	public ArrayList<Student_0511> stList(){
		ArrayList<Student_0511> list = new ArrayList<Student_0511>();
		try {
			A01_DBCP_Con.getCon();
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			Student_0511 st = null;
			while( rs.next() ){
				st = new Student_0511();
				st.setJname(rs.getString("name"));
				st.setJgrade(rs.getString("grade"));
				st.setJclass(rs.getInt("class"));
				st.setJkor(rs.getInt("kor"));
				st.setJeng(rs.getInt("eng"));
				st.setJmath(rs.getInt("math"));
				list.add(st);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A04_StudentDB_0511 db = new A04_StudentDB_0511();
		for(Student_0511 data : db.stList()){
				System.out.print(data.getJname()+"\t");
				System.out.print(data.getJgrade()+"\t");
				System.out.print(data.getJclass()+"\t");
				System.out.print(data.getJkor()+"\t");
				System.out.print(data.getJeng()+"\t");
				System.out.print(data.getJmath()+"\n");
		}
	}

}

/*
 �������� LIST �����
 1) ���̺� ����
 		�������� [		]		����[select �ְ���/������]		[�˻�]
 		
 		��ȣ		����		����		Ÿ��
 		@@@			@@@			@@@			@@@@	
 		
 2) ������ �����
 
 3) VO
 
 4) DAO
*/