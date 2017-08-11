package z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import z02_vo.Product;

public class ProductDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String sql = null;
	
	private void setCon() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con = DriverManager.getConnection(url, "scott", "tiger");
	}
	public Product prodInfo(Product dto){
		Product p = null;
		try {
			setCon();
			sql = "SELECT * FROM PRODUCT "+"WHERE PROD=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getJprod());
			rs=pstmt.executeQuery();
			if( rs.next() ){
				p = new Product();
				p.setJprod(rs.getString(1));
				p.setJcount(rs.getInt(2));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(rs!=null)
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(pstmt!=null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if(con!=null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return p;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ProductDAO dao = new ProductDAO();
		Product dto = new Product();
		dto.setJprod("APPLE");
		System.out.println(dao.prodInfo(dto));
	}

}
