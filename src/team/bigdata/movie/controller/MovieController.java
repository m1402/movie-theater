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
import team.bigdata.movie.service.MovieSearch;

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
		
		
		
		
		else if (url.equals("/movieRanking.ksr")) {
			service = new MovieSearch();
			try {
				service.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			path = "movieRanking.jsp";
		}
		
		
		
		
//		else if (url.equals("/movieUnreleased.ksr")) {
//			service = new MovieUnreleased();
//			try {
//				service.execute(request, response);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			path = "movieUnreleased.jsp";
//		}
		
		
		
		
		
		
		
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
