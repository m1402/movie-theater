package team.bigdata.movie.service;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.movie.dao.MovieDAO;
import team.bigdata.movie.vo.MovieVO;
import team.bigdata.sns.dao.SnsDAO;
import team.bigdata.sns.vo.SnsVO;

public class MoviePlaying implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		
		// 데이터 조회
		MovieDAO movieDao = new MovieDAO();
		ArrayList<MovieVO> moviePlayingList = movieDao.moviePlaying(6, 10);
		
		// 데이터 저장
		request.setAttribute("moviePlayingList", moviePlayingList);
	}
}