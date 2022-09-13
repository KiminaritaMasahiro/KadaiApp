package model2;

import dao2.KAccountDAO;
import scopedata2.KAccount;
import scopedata2.KLogin;

public class KLoginLogic {
	public boolean execute(KLogin klogin) {
		KAccountDAO dao = new KAccountDAO();
		KAccount Kaccount = dao.findUserCheck(klogin);
		if(Kaccount == null) return false;
		else                return true;
	}
}