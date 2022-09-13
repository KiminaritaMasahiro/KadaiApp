package dao2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import scopedata2.KAccount;
import scopedata2.KLogin;

public class KAccountDAO {
	public KAccount findUserCheck(KLogin Klogin) {
	KAccount Kaccount;
	Connection con = null;
	PreparedStatement pstmt;
	String ka_id  = Klogin.getKa_id();
	String pass = Klogin.getPass();
	try {
		Class.forName("org.h2.Driver");
		con = DriverManager.getConnection(
				"jdbc:h2:tcp://localhost/~/test","sa","pass");
		String sql = "select * from kanri where ka_id =? and pass=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,ka_id);
		pstmt.setString(2,pass);

		ResultSet rs =pstmt.executeQuery();
		rs.next();

		Kaccount = new KAccount(ka_id,pass);

	}catch(Exception e){
		return null;
	}finally{
		try {
			if(con!=null)  con.close();
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
	}
	return Kaccount;
}
}
