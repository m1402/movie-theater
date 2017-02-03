package team.bigdata.movie.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.dao.MovieAdminDAO;


public class MovieDelete implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		String title = request.getParameter("title");
		MovieAdminDAO MovieAdminDAO1 = new MovieAdminDAO();
		MovieAdminDAO1.delete_movie(title);

	}
}
