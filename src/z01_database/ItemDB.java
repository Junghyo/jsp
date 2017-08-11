package z01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import z02_vo.Item;

public class ItemDB {
	private Connection con = null;
	private PreparedStatement pstmt = null;;
	private ResultSet rs = null;
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String sql = null;
	private void setCon() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		con=DriverManager.getConnection(url, "scott", "tiger");
	}
	public Item when(Item data){
		Item i = null;
		try {
			setCon();
			sql = "SELECT * FROM ITEM";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				i = new Item();
				i.setJdday(rs.getString("dday"));
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub
		ItemDB dao = new ItemDB();
		Item dto = new Item();
		System.out.println(dao.when(dto).getJdday());
	

	}

}
