package model;

import dao.KRegisterDAO;
import scopedata.KAccount;

public class KRegisterUserLogic {
	public boolean execute (KAccount account) {
		KRegisterDAO dao = new KRegisterDAO();

		int r = dao.execute(account);
		if(r == 0) return false;
		return true;
	}
}
