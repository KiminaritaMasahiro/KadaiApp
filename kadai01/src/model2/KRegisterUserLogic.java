package model2;

import dao2.KRegisterDAO;
import scopedata2.KAccount;

public class KRegisterUserLogic {
	public boolean execute (KAccount Kaccount) {
		KRegisterDAO dao = new KRegisterDAO();

		int r = dao.execute(Kaccount);
		if(r == 0) return false;
		return true;
	}
}
