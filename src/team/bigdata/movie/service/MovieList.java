package team.bigdata.movie.service;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.dao.MovieAdminDAO;
import team.bigdata.movie.vo.MovieVO;
import team.bigdata.sns.dao.SnsDAO;
import team.bigdata.sns.vo.SnsVO;

public class MovieList implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		MovieAdminDAO MovieAdminDAO1 = new MovieAdminDAO();
		ArrayList<MovieVO> alist1 = MovieAdminDAO1.getAllInfo();

		request.setAttribute("alist1", alist1);

	}
}
