/* A02_ComDB.java
 * 데이터베이스 ArrayList<Student>
 * 이름   학년     반     국어   영어     수학
 *  A    	1   	2    50        50     50
 *  B    	1    	2    50        50     50
 *  * A02_ComDB 위에 public ArrayList<Student> list (){ return list; } 메소드 생성
 * main(){
 * A02_ComDB a = new A02_ComDB();
 * ArrayList<Student> st = db.list(); 로 출력
 * }
 * 
 * */
package z01_database;

import java.sql.*;
import java.util.ArrayList;

class Student{
	private String jname;
	private int jgrade;
	private int jclass;
	private int jkor;
	private int jeng;
	private int jmath;
	public String getJname() {
		return jname;
	}
	public void setJname(String jname) {
		this.jname = jname;
	}
	public int getJgrade() {
		return jgrade;
	}
	public void setJgrade(int jgrade) {
		this.jgrade = jgrade;
	}
	public int getJclass() {
		return jclass;
	}
	public void setJclass(int jclass) {
		this.jclass = jclass;
	}
	public int getJkor() {
		return jkor;
	}
	public void setJkor(int jkor) {
		this.jkor = jkor;
	}
	public int getJeng() {
		return jeng;
	}
	public void setJeng(int jeng) {
		this.jeng = jeng;
	}
	public int getJmath() {
		return jmath;
	}
	public void setJmath(int jmath) {
		this.jmath = jmath;
	}

}

public class A02_ComDB_0510 {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	static String query = "select * from STUDENT";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	public void setConnection() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con = DriverManager.getConnection(url,"scott","tiger");
		System.out.println("Connection Successed.");
	}
	public ArrayList<Student> list(ArrayList<Student> list){
		return list;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_ComDB_0510 db = new A02_ComDB_0510();
		ArrayList<Student> list = new ArrayList<Student>();
		Student data = null;
		try {
			db.setConnection();
			db.stmt = db.con.createStatement();
			db.rs = db.stmt.executeQuery(query);
			while(db.rs.next()){
				data = new Student();
				data.setJname(db.rs.getString("NAME"));
				data.setJgrade(db.rs.getInt("GRADE"));
				data.setJclass(db.rs.getInt("CLASS"));
				data.setJkor(db.rs.getInt("KOR"));
				data.setJeng(db.rs.getInt("ENG"));
				data.setJmath(db.rs.getInt("MATH"));
				list.add(data);
			}
			ArrayList<Student> stList = db.list(list);
			for(Student st : stList){
				System.out.print(st.getJname()+"\t");
				System.out.print(st.getJgrade()+"\t");
				System.out.print(st.getJclass()+"\t");
				System.out.print(st.getJkor()+"\t");
				System.out.print(st.getJeng()+"\t");
				System.out.print(st.getJmath()+"\n");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Wrong Driver.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Connection failed.");
		}finally{
			try {
				if(db.rs!=null) db.rs.close();
				if(db.stmt!=null) db.stmt.close();
				if(db.con!=null) db.con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
