package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import scopedata.Account;
import scopedata.Login;

public class AccountDAO {
	public Account findUserCheck(Login login) {
	Account account;
	Connection con = null;
	PreparedStatement pstmt;
	String gaku_id  = login.getGaku_id();
	String pass = login.getPass();
	try {
		Class.forName("org.h2.Driver");
		con = DriverManager.getConnection(
				"jdbc:h2:tcp://localhost/~/test","sa","pass");
		String sql = "select * from Gakusei where gaku_id =? and pass=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,gaku_id);
		pstmt.setString(2,pass);

		ResultSet rs =pstmt.executeQuery();
		rs.next();

		String name = rs.getString("name");
		int graduation = rs.getInt("graduation");
		account = new Account(gaku_id,pass,name,graduation);

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
	return account;
}
}
