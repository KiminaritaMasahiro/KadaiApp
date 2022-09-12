package scopedata;

import java.io.Serializable;

public class Login implements Serializable {
	private String gaku_id;
	private String pass;
	public Login(String _gaku_id,String _pass) {
		gaku_id=_gaku_id;pass=_pass;
	}
	public String getGaku_id() {return gaku_id;}
	public String getPass() {return pass;}
}
