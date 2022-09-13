package servlet2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model2.KRegisterUserLogic;
import scopedata2.KAccount;


@WebServlet("/KRegisterUser")
public class KRegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(action == null) {
			RequestDispatcher dispatcher =
		            request.getRequestDispatcher("WEB-INF/jsp/Admin/ka_sign.jsp");
        dispatcher.forward(request, response);
		}else{
			HttpSession session = request.getSession();
			KAccount Kaccount = (KAccount)session.getAttribute("KLoginUser");
			KRegisterUserLogic rg=new KRegisterUserLogic();
			boolean z = rg.execute(Kaccount);
			String path;
			if(z == true)
					path = "WEB-INF/jsp/Admin/ka_result.jsp";
			else
					path = "WEB-INF/jsp/top.jsp";
			RequestDispatcher dispatcher=
					request.getRequestDispatcher(path);
			dispatcher.forward(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //入力情報を取得
        String ka_id = request.getParameter("ka_id");
        String pass = request.getParameter("pass");
        HttpSession session = request.getSession();
        //Accountインスタンス作成
        KAccount Kaccount = new KAccount( pass, ka_id);
                           // 識別子     インスタンス
        session.setAttribute("KLoginUser",   Kaccount );

        RequestDispatcher  dispatcher =
        		request.getRequestDispatcher("WEB-INF/jsp/Admin/ka_confirm.jsp");
        dispatcher.forward(request, response);
	}

}




