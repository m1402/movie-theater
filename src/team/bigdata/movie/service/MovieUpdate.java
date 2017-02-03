package team.bigdata.movie.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.dao.MovieAdminDAO;
import team.bigdata.sns.dao.SnsDAO;

public class MovieUpdate implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		
		String num = request.getParameter("num");
		String title = request.getParameter("title");
		String dir = request.getParameter("dir");
		String bookp = request.getParameter("bookp");
		String day = request.getParameter("day");
		
		MovieAdminDAO mvdao1 = new MovieAdminDAO();
		mvdao1.update_mv(num, title, dir, bookp, day);

	}
}
