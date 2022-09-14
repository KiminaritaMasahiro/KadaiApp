package servlet3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model3.ARegisterUserLogic;
import scopedata3.AAccount;


@WebServlet("/ARegisterUser")
public class ARegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(action == null) {
			RequestDispatcher dispatcher =
		            request.getRequestDispatcher("WEB-INF/jsp/Admin/ka_Info_sign.jsp");
        dispatcher.forward(request, response);
		}else{
			HttpSession session = request.getSession();
			AAccount Aaccount = (AAccount)session.getAttribute("ALoginUser");
			ARegisterUserLogic rg=new ARegisterUserLogic();
			boolean z = rg.execute(Aaccount);
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
        String co_id = request.getParameter("co_id");
        String name = request.getParameter("name");
        String region = request.getParameter("region");
        String type = request.getParameter("type");
        String content = request.getParameter("content");
        String pdf = request.getParameter("pdf");
        HttpSession session = request.getSession();
        //Accountインスタンス作成
        AAccount Aaccount = new AAccount( name, co_id,region,type,content,pdf);
                           // 識別子     インスタンス
        session.setAttribute("ALoginUser",   Aaccount );

        RequestDispatcher  dispatcher =
        		request.getRequestDispatcher("WEB-INF/jsp/Admin/ka_confirm.jsp");
        dispatcher.forward(request, response);
	}

}




