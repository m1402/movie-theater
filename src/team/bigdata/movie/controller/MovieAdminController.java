package team.bigdata.movie.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.service.MovieCreate;
import team.bigdata.movie.service.MovieDelete;
import team.bigdata.movie.service.MovieList;
import team.bigdata.movie.service.MovieRead;
import team.bigdata.movie.service.MovieUpdate;


/**
 * Servlet implementation class MovieFrontController
 */
@WebServlet("*.kms2")
public class MovieAdminController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MovieAdminController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// url Î∂ÑÏÑù
		String url = request.getRequestURI().substring(request.getContextPath().length());
		
		// 
		Service service = null;
		String path = null;

		// url Î≥? MVC Ï≤òÎ¶¨
		if (url.equals("/adminAllinfo.kms2")) {
			service = new MovieList();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "adminAllinfo.jsp";
		} else if (url.equals("/adminWriting.kms2")) {
			service = new MovieCreate();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "adminWriting.jsp";
		} else if (url.equals("/adminSearchOne.kms2")) {
			service = new MovieRead();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "adminSearchOne.jsp";
		} else if (url.equals("/adminUpdating.kms2")) {
			service = new MovieUpdate();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "adminAllinfo.kms2"; // ListÎ°? Î¶¨Îã§?ù¥?†â?ä∏
		} else if (url.equals("/adminDeleting.kms2")) {
			service = new MovieDelete();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "adminAllinfo.kms2"; // ListÎ°? Î¶¨Îã§?ù¥?†â?ä∏
		}
		
		// response ?ùë?ãµÏ≤òÎ¶¨
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
