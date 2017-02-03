package team.bigdata.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.sns.service.SnsDelete;
import team.bigdata.sns.service.SnsList;
import team.bigdata.sns.service.SnsCreate;
import team.bigdata.sns.service.SnsRead;
import team.bigdata.sns.service.SnsUpdate;
import team.bigdata.user.service.UserJoinRequest;
import team.bigdata.user.service.UserLoginCheck;

/**
 * Servlet implementation class SnsFrontController
 */
@WebServlet("*.lhj")
public class UserController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// url 분석
		String url = request.getRequestURI().substring(request.getContextPath().length());
		
		// 
		Service service = null;
		String path = null;

		// url �? MVC 처리
		if (url.equals("/userLogin.lhj")) {
			path = "userLogin.jsp";
		} else if(url.equals("/userLoginCheck.lhj")) {
			service = new UserLoginCheck(); // service ����
			try {
				service.execute(request, response); // service.execute() ����
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "userLoginResult.jsp";
		} else if(url.equals("/userJoinRequest.lhj")) {
			service = new UserJoinRequest(); // service ����
			try {
				service.execute(request, response); // service.execute() ����
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "userJoinResult.jsp";
		}
		
		// response ?��?��처리
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
