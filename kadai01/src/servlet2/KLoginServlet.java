package servlet2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model2.KLoginLogic;
import scopedata2.KLogin;

@WebServlet("/KLoginServlet")
public class KLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path;
		request.setCharacterEncoding("UTF-8");

		String ka_id =request.getParameter("ka_id");
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession();
		KLogin Klogin = new KLogin(ka_id,pass);
		session.setAttribute("Klogin",Klogin);

		KLoginLogic bo  =new KLoginLogic();
		boolean z = bo.execute(Klogin);
		if(z == true) {
			path = "WEB-INF/jsp/Admin/ka_menu.jsp";
		}else{
			path  ="WEB-INF/jsp/top.jsp";
		}
		RequestDispatcher dispatcher=
				request.getRequestDispatcher(path);
		dispatcher.forward(request,response);
		}

	}

