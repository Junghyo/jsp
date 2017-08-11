/*
 # ����ȭ�� �÷���
 1) ����ȭ��� ������ȯ�濡�� Ư�� �������� �ϰ��� ���忡 ���õ� �����̴�. 
 	���� �����尡 ���ÿ� �÷����� �����ϸ� �ǵ����� �ʰ� ��Ұ� ����Ǿ�
 	�����Ͱ� �Ҿ����� ���°� �ȴ�.
 	
 2) �÷��� ��ü ��, Vector, HashTable�� ����ȭ �޼���� �����Ǿ� ��Ƽ ������ ȯ�濡��
 	���������� ��Ҹ� ó���� �� �ִ�.
 	
 3) Collections
 	- List : synchronizedList(����ȭ�� �ʿ��� list ��ü)
 	- Map : synchronizedMap(����ȭ�� �ʿ��� map ��ü)
 	- Set : synchronizedSet(����ȭ�� �ʿ��� set ��ü)	
*/

/* # ��ǥ
 1) jdbc�� ����� �ڹٿ��� Ȱ��Ǵ� DBó�� ���μ����� ���� ��Ȯ�ϰ� �ľ��Ѵ�.
 
 2) VO(value object), DAO(data access object), DTO(data transfer object)�� �����ؼ�
 	DBó���� Ȱ���� �� �ֵ��� �Ѵ�.
 	
 3) �����ͺ��̽��� ������ ��ȸ, ���, ����, ���� �� ó���� ����� ������ �� �ִ�.
*/
/*
 # �����غ��ô�.
 1) java���� �����ͺ��̽� ������ ��� ������ �ɱ�?
 2) �����͸� ��ȸ�� �� �ʿ�� �ϴ� ��ҵ��� � ���� ������?
 3) java���� �����ͺ��̽��� ���� �� �ڿ��� ��� ������ �ұ�? 
 4) DB���� �� �߻��� ���� ������ � ���� ������?
 5) SQL�� ���� ���� query�� ��� ó���ؾ� �ұ�?
*/

/*
 # JDBC
  - JDBC(Java Database Connectivity)�� �ڹٷ� �����ͺ��̽���
    ������ �� �ְ� �ϴ� ���α׷� API�� ���Ѵ�. 
    
    Database Client  ----> 	Database Server
    							
    Java Program				��
    				 ---->	JDBC Driver
    Java��� Util	
    
 # jdbc�� �̿��ؼ� DB ����
 1. driver �ٿ�ε� �� lib�� ��ġ����
  	1) Orcale ����
    - C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar	

 	2) Web(jsp���) ���α׷�
    - \WebContent\WEB-INF\lib �� �ش� lib������ ��ġ
    
 2. ����̹� �ε� 
    1) Ŭ������ JVM �޸𸮿� �ε�
    	- lib�� �ִ� package��.class
    	- orcle.jdbc.driver.Oracle.Driver.class
    	- Class.forName( dirver�� )
  
 3. DB�� ����
   - url : jdbc driver(thin):ip����:port����:SID
   - jdbc:oracle:thin:@localhost:1521:xe
   - Connection con = DriverManager.getConnection(url, id, pass);
   
   [driver �޸�]���� DriverManger ����>[Connection] ����> [Statement, PreparedStatement] ������ sql( select * from emp, insert into XXX )
   																	��
																	������������������������ ������� ���� ��� ������> [ResultSet] ���� ȿ���� ó���� ���� ������> [ ArrayList<VO> ] ������> ��
																	����commit();																			 ��
																																			         	 ������������������������> ���ø����̼�
 
 4. ��ȭ�ϱ�(Statement, PreparedStatement)
 	1) SQL�� �ۼ�
 		- select * from emp
 	
 	2) ����� ��ü(con)�� Statement ����
 		- Statement stmt = con.createStatement();
 	
 	3) ���� SQL�� ó��. ������� ���� ��� ResultSet
 		- ResultSet rs = stmt.executeQuery(SQL��)
 
 5. ����� ó��(ResultSet)
 	- next() : �����Ͱ� ���� ������ ȣ��(���� row�� �����Ͱ� �ִ��� ���θ� boolean������)
 	- while( rs.next() )
 	- getXXX("SQL�� title��");		<--- sql���� �÷��� ������ ���̸� �������� �����͸� ������. ex) select ename [name] from emp. name�� ������
 	  ex) rs.getString("name");
 		
 6. ������� ���� SQL��
    - con.commit() ȣ�� : ���, ����, ������ Ȯ��
    - con.rollback() ȣ�� : ������ ���� ���
   
 7. ResultSet -> ArrayList<VO> ��ȯ ó��
 	- sql�� list�� �´� VO ��ü ����(java)
 	- ArrayList<Emp> list = new ArrayList<Emp>();
 	- Emp e = null;
 	- while( rs.next() ){			-- rs.next() : row������ �ݺ�ó��
 			e = new.Emp();
 			e.setEmpno( rs.getInt("empno") );
 			...
 			...
 			list.add(e);
 	  }
 
 # jdbc���� ���� ó��
 1) Database ������ �ܺο� �����Ͽ� ������ IO(input/out)�� �Ͼ�⿡
 	�ڹٿ����� �ݵ�� ����ó���ϰԲ� �����ϰ� �ִ�.
 	- ����̹� �޸� ����
 	- �����ͺ��̽� ����, sql ó��, ������� �޴� ���� -> SQLException
 	try{
 		DBó�� ���õ� �ڵ�
 	}catch(Exception e){
 	
 	}
 
 2) Exception������ �ڿ�����
 	- close() : �ڿ������� �ؾ� ȿ�������� �޸� ������ �ȴ�.
 	- finally{}�������� ����
 	- ����, ����, �Է½� ���ܰ� �߻��ϸ� rollback() ȣ���Ͽ� ����ó��
																																			         	 
*/

/*
 # ���� DB��� �����
 1) XXXDB.java �����
 
 2) vo ��Ű�� ����
 	- VO Ŭ���� ����
 	
 3) field����
	Connection con 		: ���ᰴü
	Statement stmt 		: ��ȭ
 	PreStatement pstmt
	ResultSet rs; 		: ���
 
*/
package z01_database;

import java.sql.*;
import java.util.ArrayList;

import z02_vo.Emp;

public class A01_EmpDB_0510 {
	
//	1. field ����
//	1) Connection con 			: ���� ��ü
	private Connection con;
	
//	2) Statement stmt 			: ��ȭ
//	   PreparedStatement pstmt
	private Statement stmt;
	private PreparedStatement pstmt;
	
//	3) ResultSet rs; 			: ���	
	private ResultSet rs;
	
//	2. ����ó���ϴ� �޼���(���ܻ��� ���� ó��)
	private void setConnection() throws ClassNotFoundException, SQLException{	
//		try {
//			1) driver�޸𸮿� �ø���.(Exception ó��)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
//			DB����̹�����(thin)@ip:port:sid
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			
// 			2) DriverManager.getConnection(url, id, pass).	  (Exception ó��)
			con = DriverManager.getConnection(url, "scott", "tiger");
			System.out.println("���� ���� ����.");
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			System.out.println("����̹� �̻�.");
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			System.out.println("���� �̻�.");
//		}
	}
	
//	emp ���̺� select * from emp�� ���ؼ� �������� �����͸� ArrayList<Emp>�� ������
	public ArrayList<Emp> empList(){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {
//			1. ����			
			setConnection();	
			
//			2-1. ��ȭ
			stmt = con.createStatement();
//			2-2. sql�� ó��			
			String query ="SELECT * FROM EMP ORDER BY EMPNO DESC";
//			2-3. ��ȭ�� �ϰ� �����(ResultSet)
			rs = stmt.executeQuery(query);
			
//			3. ���(select -> ResultSet, insert/update/delete -> DB�� ó��)	
//			rs.next() : loop ��{}�� ó���� �Ŀ�, ���� row�� �����Ͱ� �ִ��� ���θ� return true/false
//			rs.getXXX("�÷���") �÷��� : sql ���� ��Ÿ���� ���� title �÷���(������ �ٿ��� ��� �������� �ҷ��� �ȴ�.)

//			3-1 ArrayList<Emp_0511>�� �����͸� ���� ������ü(Emp)�߰�
//				Emp(����, �������Ҵ�) --> ArrayList<Emp_0511> add

//			���� ��ü ����			
			Emp emp = null;
			
//			Emp_0511 emp�� loop�� �ȿ� �����ϸ� ������ü�� �ݺ���ŭ ���� �޸� ���� �߻�	
//			Emp emp = new emp();�� loop�� �ۿ��� �����ϰ� loop�� �ȿ� �������� ������ 
//			���� ��ü�� �����ϱ� ������ ������ �����͸� ������ �Ǽ���ŭ �Ҵ�			
			while( rs.next() ){
				emp = new Emp();
//				emp.setXXX()�� ������ �����͸� rs.getXXX("�÷���")����
//				�Ҵ��Ͽ� emp�ʵ忡 �����͸� ����				
				emp.setJempno(rs.getInt("empno"));
				emp.setJename(rs.getString("ename"));
				emp.setJjob(rs.getString("job"));
				emp.setJmgr(rs.getInt("mgr"));
				emp.setjhiredate(rs.getDate("hiredate"));
				emp.setJsal(rs.getDouble("sal"));
				emp.setJcomm(rs.getDouble("comm"));
				emp.setJdeptno(rs.getInt("deptno"));
				list.add(emp);
				
			}
//			����, ����, ��� �ÿ��� commit();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
//			����, ����, ��� rollback();			
			e.printStackTrace();
		}finally{
				try {
//					ResultSet�� ���� �޸𸮿� �Ҵ�Ǿ� �ִٸ�	
//					IO �߻����� ����ó��					
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
//	�˻� �޼ҵ�	
	public ArrayList<Emp> search(Emp sch){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {	
			setConnection();	
			stmt = con.createStatement();	
			String query ="select * "+"from emp "+"where ename like '%"+sch.getJename()+"%' "+"and job like '%"+sch.getJjob()+"%' ORDER BY EMPNO DESC";
			System.out.println(query);
			rs = stmt.executeQuery(query);				
			Emp emp = null;
	
			while( rs.next() ){
				emp = new Emp();			
				emp.setJempno(rs.getInt("empno"));
				emp.setJename(rs.getString("ename"));
				emp.setJjob(rs.getString("job"));
				emp.setJmgr(rs.getInt("mgr"));
				emp.setjhiredate(rs.getDate("hiredate"));
				emp.setJsal(rs.getDouble("sal"));
				emp.setJcomm(rs.getDouble("comm"));
				emp.setJdeptno(rs.getInt("deptno"));
				list.add(emp);				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {	
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
//	PreparedStatement	
	public ArrayList<Emp> searchPre(Emp sch){
		ArrayList<Emp> list = new ArrayList<Emp>();
		try {	
			setConnection();	
			String query ="SELECT * "+"FROM EMP "+"WHERE ENAME LIKE '%'||?||'%' "+"AND JOB LIKE '%'||?||'%' "+ "ORDER BY EMPNO DESC ";
			System.out.println(query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, sch.getJename());
			pstmt.setString(2, sch.getJjob());
			rs = pstmt.executeQuery();
			Emp emp = null;
	
			while( rs.next() ){
				emp = new Emp();			
				emp.setJempno(rs.getInt("empno"));
				emp.setJename(rs.getString("ename"));
				emp.setJjob(rs.getString("job"));
				emp.setJmgr(rs.getInt("mgr"));
				emp.setjhiredate(rs.getDate("hiredate"));
				emp.setJsal(rs.getDouble("sal"));
				emp.setJcomm(rs.getDouble("comm"));
				emp.setJdeptno(rs.getInt("deptno"));
				list.add(emp);				
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {	
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

//	�Է¸޼��� �����
	public void insertEmp(Emp ins){
//		1) db ����.
		try {
			setConnection();
			String sql = "INSERT INTO EMP VALUES(EMP_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, ?, ?, ?)";
/*			COMMIT
 			autocommit �ɼ��� false����Ͽ� commit���� ������ Ʈ����� Ȯ�� ó������ �ʵ��� �Ѵ�.
 			setAutoCommit(false)
*/			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getJename());
			pstmt.setString(2, ins.getJjob());
			pstmt.setInt(3, ins.getJmgr());
			pstmt.setDouble(4, ins.getJsal());
			pstmt.setDouble(5, ins.getJcomm());
			pstmt.setInt(6, ins.getJdeptno());
			pstmt.executeUpdate();
//			����ó�� �Ǿ��� ��� : commit
			con.commit();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
//			��� ��, ���� �߻����� ��ü ������ �Է� ���
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
	
	public void updateEmp(Emp upt){
		try {
			setConnection();
			con.setAutoCommit(false);
			String sql = "UPDATE EMP SET "+"ENAME=?, "+
											"JOB=?, "+
											"MGR=?, "+
											"SAL=?, "+
											"COMM=?, "+
											"DEPTNO=? "+
											"WHERE EMPNO=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getJename());
			pstmt.setString(2, upt.getJjob());
			pstmt.setInt(3, upt.getJmgr());
			pstmt.setDouble(4, upt.getJsal());
			pstmt.setDouble(5, upt.getJcomm());
			pstmt.setInt(6, upt.getJdeptno());
			pstmt.setInt(7, upt.getJempno());
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
//	1�� �˻� �޼ҵ�	
	public Emp oneEmp(int jempno){
		Emp emp = null;
		try {	
			setConnection();	
			String query ="SELECT * "+"FROM EMP "+"WHERE EMPNO=? ";
			System.out.println(query);
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, jempno);
			rs = pstmt.executeQuery();
	
			while( rs.next() ){
				emp = new Emp();			
				emp.setJempno(rs.getInt("empno"));
				emp.setJename(rs.getString("ename"));
				emp.setJjob(rs.getString("job"));
				emp.setJmgr(rs.getInt("mgr"));
				emp.setjhiredate(rs.getDate("hiredate"));
				emp.setJsal(rs.getDouble("sal"));
				emp.setJcomm(rs.getDouble("comm"));
				emp.setJdeptno(rs.getInt("deptno"));		
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {	
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
		return emp;
	}

//	���� �޼ҵ�
	public void delete(Emp del){
		try {
			setConnection();
			String query = "DELETE FROM EMP WHERE EMPNO=?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1,del.getJempno());
			pstmt.executeUpdate();
			con.createStatement();
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

 	public void deleteEmp(int jempno){
 		try {
			setConnection();
			String query = "DELETE FROM EMP WHERE EMPNO=?";
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, jempno);
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
	public Emp Infologin(Emp dto){
		Emp info = null;
		try {
			setConnection();
			String query = "SELECT * FROM EMP WHERE ENAME=? AND EMPNO=? ";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getJename());
			pstmt.setInt(2, dto.getJempno());
			rs=pstmt.executeQuery();
			if(rs.next()){
				info = new Emp();
				info.setJename(rs.getString("ename"));
				info.setJempno(rs.getInt("empno"));
				info.setJjob(rs.getString("job"));
				info.setjhiredate(rs.getDate("hiredate"));
				info.setJmgr(rs.getInt("mgr"));
				info.setJsal(rs.getDouble("sal"));
				info.setJcomm(rs.getDouble("comm"));
				info.setJdeptno(rs.getInt("deptno"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return info;

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_EmpDB_0510 db = new A01_EmpDB_0510();
//		�Է��� ���� DTO
		Emp dto = new Emp();
/*		dto.setJename("����");
		dto.setJjob("����");
		dto.setJmgr(7839);
		dto.setJsal(8888);
		dto.setJcomm(988);
		dto.setJdeptno(40);
		dto.setJempno(7939);
//		������ �Է�ó��		
//		db.insertEmp(dto);
		db.updateEmp(dto);
		for(Emp data: db.empList()){
			System.out.print(data.getJempno()+"\t");
			System.out.print(data.getJename()+"\t");
			System.out.print(data.getJjob()+"\t");
			System.out.print(data.getJmgr()+"\t");
			System.out.print(data.getjhiredate()+"\t");
			System.out.print(data.getJsal()+"\t");
			System.out.print(data.getJcomm()+"\t");
			System.out.print(data.getJdeptno()+"\n");
		}*/
		
		Emp sch = new Emp();
		System.out.println("�̸��� S�� ���Ե� ���");
		for(Emp data: db.searchPre(sch)){
			System.out.print(data.getJempno()+"\t");
			System.out.print(data.getJename()+"\t");
			System.out.print(data.getJjob()+"\t");
			System.out.print(data.getJmgr()+"\t");
			System.out.print(data.getjhiredate()+"\t");
			System.out.print(data.getJsal()+"\t");
			System.out.print(data.getJcomm()+"\t");
			System.out.print(data.getJdeptno()+"\n");
		}
		Emp detail=db.oneEmp(1111);
		System.out.println(detail);
		
		
	}

}
/*
 # ArrayList<VO> ������ ��������
 	1. Data
 		1) ���̺� ����
 		2) sql : select * from emp
 		 	- ��Ÿ���� �������� column��� type(����/����/��¥��/boolean ��) Ȯ��
 	
 	2. VO : ���������͸� ������ class code
 			- sql�� column��� type�� �մ��� VO class ����
 	
 	3. Database ���
 			- public ArrayList<Emp> empList(){}
 			- �޼��� ����
 
 # data list �������� �޼���
  public ArrayList<EMP> empList(){
  	- return�� ����� ����;
  	ArrayList<Emp> list = new ArrayList<Emp>();
  	
  	- setConn(): DB���� ó�� �޼��� ȣ��
  	
  	- ��ȭó�� : con.createStatement()
  				 rs = stmt.executeQuery(sql��)
  	
  	- ����� �ޱ� : while( rs.next() ) 	-> �����͸� row������ �������鼭 ����row�� �����Ͱ� �ִ��� ���� Ȯ��
  					rs.getXXX("�÷���")
  					list.add(emp) : ArrayList�� ��ü �ֱ�
  		
   - ����ó�� : �ڿ�����
   
 # ���ܿ� �ڿ�����
 1) �ڿ� �Ҵ� ����
 	- Connection -> Statement -> ResultSet
 	
 2) �ڿ� ���� ����
 	- ResultSet -> Statement -> Connection
 	- close();
 	- if(�ڿ�!=null){
 	  	�ڿ�.close();
 	  }
*/

/* # ��ȸ ó��
 ��ȸ �����͸� �Է��ϸ� DAO�� ���Ͽ� ��ȸ ���ǰ��� �Էµǰ�
 �Էµ� ���ǿ� ���� listó���ϴ� ���μ����� ���Ѵ�.

 1) ��ȸ �޼��带 ���� ��ȸ ���� ���õ� ���� ����
	- ArrayList<Emp> search(Emp sch){	
      }

 2) sql ����
	- select * from emp where ename like '%'||sch.getName()||'%'

 3) app(main)
	- DataDAO dao = new DataDAO();
	- Emp sch = new Emp();
	  sch.setEname("ȫ�浿")
	- dao.search(sch);
	
 # ��ȸ ó��
	�̸�:[    ] 		[��ȸ]
	
	���	�̸�	�޿�	�Ի���
	@@@@	@@@@	@@@@	@@@@@@	

 1) ��ȭ�鿡�� ��ȸ�˻� ó��
	<input name="name">�� value�� �Է��� �ϰ� ��ȸ ��ư���� ���� page�� submit() ���� ��
	
 2) String name = request.getParameter("name")
	DataDAO dao = new DataDAO();
	Emp sch = new Emp();
	sch.setEname("ȫ�浿")
	dao.search(sch);

*/

/*
 # PreparedStatement
 1) sql�� ���� �����ܿ� ������ ������ ���ް��� ������ ������� ó���Ǵ�
 	Statement ��ü �� �ϳ��̴�. �ӵ�, ���ȿ� ���� �̽��� �ذ��� �ش�.
 
 2) PreparedStatement ��ü �ʵ�� ����
 
 3) sql = "SELECT * FROM WHERE JOB = ?"
 
 4) pstmt = con.PreparedStatement(sql);
 
 5) sql�� ? �� �ش��ϴ� data�� �Ʒ� ����  ����
 	- pstmt.setString("Manager")
 
 7) ���� ��, �Ʒ� ������ �����͸� �޾ƿ�.
 	- ResultSet rs = pstmt.executeQuery();
*/

/*
# ������ ���̽� �Է� ó��
1) sql
	- insert into emp(empno, ename) values(?,?)

2) transaction : con.setAutoCommit(false)
 	- commit(); : ����ó����
 	- rollback(); : ���ܹ߻���
 
3) pstmt.con.prepareStatement(sql);

4) pstmt.setInt(1, dto.getEmpno());

5) pstmt.setString(2,dto.getEname());

6) pstmt.executeUpdate();  : ���, ����, ����

7) ����ó���� commit()

8) ���ܹ߻��� rollback()
*/

/*
 # ��� ȭ��(jsp) �� ó��
 1) ���� ��ȸ(order by �����ȣ desc)
  - ��� ��ư Ŭ�� �� ���ȭ������ �̵�
  
 2) ��� ��� ȭ��
  - �����: [	]
  - ��å: [select  ]
  - �����ڹ�ȣ: [select	]
  - ����: [		]
  - ���ʽ�: [	]
  - �μ�	[select]		[���]
  
 3) ��� ó�� jsp -> ���� ��ȸ�� �̵�
*/

/*
 # ��� ó�� proc.jsp
 1) import DAO
 2) <%��ü����
 3) ��û�� ó��
  -request.getParameter("ename")
 4) ��û���� �Է� dto�� �Ҵ�
 5) dao�� insert�޼����� �Ű������� ����
 6) response.sendRedirect(�ʱ� ����Ʈ ������ �̵�)
*/

/*
 # ���� DB ���
 public void updateEmp(Emp upt)
 	- ����
 	- sql : update ���̺� set �÷��� = ������ ������ where empno = ?
 	- commit
 	- ��������
*/

/*
 # Webȭ�� DBó�� ���μ���
 1. ���� ��ü ����Ʈ(�ʱ�)
 	1) �˻� �Է� (��ȸ)
 	2) �Է¹�ư -> �Է�ȭ��
 	3) ����Ʈ�� ������ 1�� ������ Ŭ�� -> ��ȭ��
 		- key���� empno�� ����(query string) ��page?empno=7777&key=��&...

 2. ��ó��
 	1) �󼼳��� ��ȸ
 		- String empno=request.getParameter("empno")
 		- sql = "select * from emp where empno ="+empno;
 		- DB���� ������ �� row�� �����͸� Emp(VO)�� �Ҵ�
 		- ȭ�鿡�� �׸񺰷� �ҷ���(<%=emp.getEmpno()%>)
 	2) ����ó��
 	3) ����
*/

/*
 # ���� ó�� proc
 1) ������ ������ ȭ�鿡 list
 2) ������ ������ ���Է�
 3) ���� ��ư Ŭ������ DB �����ϴ� proc�� ����
	- ������ ������ ����(query string) : ������ page?������name=������value*&
 4) ���� page���� ó��
 	- String ename = request.getParameter("������name");
 5) ������ ��ü������ ��ȯ
 	- Emp vo = new Emp();
 	- vo.setEname(ename);
 6) ���� DB��� �ۼ�
 	- ���� ���� data -> ��ü ����
 	- void update(String ename, String job, String mgr, int empno...) -> void update(Emp e)
*/

/*
 # ���� ó�� proc
 1. ��ȭ�� ���� ��ư Ŭ��
 	1) empno ����
 		- delete from emp where empno=?
 
 2. a07_updateProc_0512.jsp���� ó�� ����

*/

/*
 # Java�� javascript�� ��ȯ
 1) Jsp���� <%%>�� ����� �ڹ� code�� javascript�� �����ͷ� �ѱ� �� �ִ�.
 	- String ename=request.getParameter("ename");
 2) Javascript����
 	- var ���ں����� = "<%=ename%>"; �Է°���
 	- var ���ں����� = <%=empno%>; �Է°��� 
*/

/*
 # jsp CRUD
 1. create, read, update, delete
 
 2. VO/DTO ���� �� �ִ�.
 	- ���̺�, VO
 
 3. VO ���� ArrayList<VO>
 	- add(), get(index)�� loop while
 
 4. DB Connection
 	- (DAO - database access object)
 	- ����
 	- �� ��ɺ� �޼���
 	- List ���� return type, �Է°� VO(��ȸ����) ����
 	- VO return type, �Է°� int, VO
 	- ���/����/���� �Է°�
 	
 5. DAO
 	1) ���� �޼��� ����
 	2) ����, ��ȭ, sql, ���ó�� �κ�
 	3) ����
 		- �ڿ��ݳ�, ����, ���� ���
 		- (transaction)[commit/rollback] ����
 		
 6. ȭ�� ó��
 	- ���� ���/��û���� ���� ó��
 	- List ���� ��ȸ( for(:) )
 	- Proc(�Է�, ����, ����)
*/

/*
 �̴ϰ���
 # ���θ�
 - ȸ������
 - �α��� ó��
 - ȸ�� ����Ʈ �� ���
 - ���� ���Ǹ���Ʈ ����
 
 # ���������ý���
 - ȸ��/�α���
 - ���� �� �ݳ�ó��
 - ȸ�� ����Ʈ �� �߰�
 
 # RPG ���� SITE
 - ȸ������/�α���
 - �ɸ� ���� ����
*/


