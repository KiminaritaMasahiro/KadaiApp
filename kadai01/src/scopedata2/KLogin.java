package scopedata2;

import java.io.Serializable;

public class KLogin implements Serializable {
	private String ka_id;
	private String pass;
	public KLogin(String _ka_id,String _pass) {
		ka_id=_ka_id;pass=_pass;
	}
	public String getKa_id() {return ka_id;}
	public String getPass() {return pass;}
}
