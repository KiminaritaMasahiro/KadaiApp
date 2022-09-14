package model3;

import dao3.ARegisterDAO;
import scopedata3.AAccount;

public class ARegisterUserLogic {
	public boolean execute (AAccount Aaccount) {
		ARegisterDAO dao = new ARegisterDAO();

		int r = dao.execute(Aaccount);
		if(r == 0) return false;
		return true;
	}
}
