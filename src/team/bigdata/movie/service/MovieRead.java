package team.bigdata.movie.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.dao.MovieAdminDAO;
import team.bigdata.movie.vo.MovieVO;
import team.bigdata.sns.dao.SnsDAO;
import team.bigdata.sns.vo.SnsVO;

public class MovieRead implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		String title = request.getParameter("title");

		MovieAdminDAO MovieAdminDAO1 = new MovieAdminDAO();
		MovieVO mv1 = MovieAdminDAO1.search_mv(title);

		request.setAttribute("mv1", mv1);

	}
}
