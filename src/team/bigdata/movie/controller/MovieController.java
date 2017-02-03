package team.bigdata.movie.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.service.MoviePlaying;

/**
 * Servlet implementation class SnsFrontController
 */
@WebServlet("*.ksr")
public class MovieController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MovieController() {
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
		if (url.equals("/moviePlaying.ksr")) {
			service = new MoviePlaying();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "moviePlaying.jsp";
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
