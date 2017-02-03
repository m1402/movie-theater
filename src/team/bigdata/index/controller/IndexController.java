package team.bigdata.index.controller;

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
//@WebServlet({"/"}) // FIXME: static files도 처리 됨 
public class IndexController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexController() {
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
		if (url.equals("/")) {
			path = "userLogin.lhj";
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
