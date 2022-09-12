package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterUserLogic;
import scopedata.Account;


@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(action == null) {
			RequestDispatcher dispatcher =
		            request.getRequestDispatcher("WEB-INF/jsp/user/ga_sign.jsp");
        dispatcher.forward(request, response);
		}else{
			HttpSession session = request.getSession();
			Account account = (Account)session.getAttribute("LoginUser");
			RegisterUserLogic rg=new RegisterUserLogic();
			boolean r = rg.execute(account);
			String path;
			if(r == true)
					path = "WEB-INF/jsp/user/ga_result.jsp";
			else
					path = "WEB-INF/jsp/top.jsp";
			RequestDispatcher dispatcher=
					request.getRequestDispatcher(path);
			dispatcher.forward(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name   = request.getParameter("name");
        //入力情報を取得
        int    graduation  = Integer.parseInt(request.getParameter("graduation"));
        String gaku_id = request.getParameter("gaku_id");
        String pass = request.getParameter("pass");
        HttpSession session = request.getSession();
        //Accountインスタンス作成
        Account account = new Account( name,pass, gaku_id , graduation);
                           // 識別子     インスタンス
        session.setAttribute("LoginUser",   account );

        RequestDispatcher  dispatcher =
        		request.getRequestDispatcher("WEB-INF/jsp/user/ga_confirm.jsp");
        dispatcher.forward(request, response);
	}

}




