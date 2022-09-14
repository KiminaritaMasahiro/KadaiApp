package dao3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import scopedata3.AAccount;

public class ARegisterDAO {
	public int execute( AAccount Aaccount) {
	int f=0;
	Connection con = null;

	try {
		Class.forName("org.h2.Driver");
		con = DriverManager.getConnection(
				"jdbc:h2:tcp://localhost/~/test","sa","pass");
		String sql ="insert into company values(?,?,?,?,?,?)";
		PreparedStatement pstmt =con.prepareStatement(sql);

		pstmt.setString(1,Aaccount.getCo_id());
		pstmt.setString(2,Aaccount.getName());
		pstmt.setString(3,Aaccount.getRegion());
		pstmt.setString(4,Aaccount.getType());
		pstmt.setString(5,Aaccount.getContent());
		pstmt.setString(6,Aaccount.getPdf());

		f = pstmt.executeUpdate();
	}catch(Exception e){
		System.out.println(e.getMessage());
	}finally{
		try {
			if(con!=null)  con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	return f;
}
}
