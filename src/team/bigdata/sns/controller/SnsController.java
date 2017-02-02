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
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 
		String url = request.getRequestURI().substring(request.getContextPath().length());
		
		// 
		Service service = null;
		String path = null;

		// 
		if (url.equals("/getAllinfo.do")) { /////////////////////
			service = new SnsList();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			path = "getAllinfo.jsp"; /////////////////
		} else if (url.equals("/keulWriting.do")) {
			service = new SnsCreate();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			path = "keulWriting.jsp";

		} else if (url.equals("/keulSearchOne.do")) {
			service = new SnsRead();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			path = "keulSearchOne.jsp";
			// jsp를 만든다

		} else if (url.equals("/keulUpdating.do")) {
			service = new SnsUpdate();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			path = "getAllinfo.do";
			// jsp를 안만들고 .do호출

		} else if (url.equals("/keulDeleting.do")) {
			service = new SnsDelete();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			path = "getAllinfo.do";
			// jsp를 안만들고 .do호출
		}
		
		// 
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(path);
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
