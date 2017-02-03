package team.bigdata.sns.controller;

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

/**
 * Servlet implementation class SnsFrontController
 */
@WebServlet("*.do")
public class SnsController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SnsController() {
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

		// url 별 MVC 처리
		if (url.equals("/getAllinfo.do")) {
			service = new SnsList();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "getAllinfo.jsp";
		} else if (url.equals("/keulWriting.do")) {
			service = new SnsCreate();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "keulWriting.jsp";
		} else if (url.equals("/keulSearchOne.do")) {
			service = new SnsRead();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "keulSearchOne.jsp";
		} else if (url.equals("/keulUpdating.do")) {
			service = new SnsUpdate();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "getAllinfo.do"; // List로 리다이렉트
		} else if (url.equals("/keulDeleting.do")) {
			service = new SnsDelete();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "getAllinfo.do"; // List로 리다이렉트
		}
		
		// response 응답처리
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
