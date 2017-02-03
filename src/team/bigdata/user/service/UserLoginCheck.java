package team.bigdata.user.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.user.dao.UserDAO;

public class UserLoginCheck implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		
		// request parameter parsing
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// DB 조회
		UserDAO userDAO = new UserDAO();
		boolean isUser = userDAO.userLoginCheck(id, pw);
		
		// 데이터 저장
		request.setAttribute("isUser", isUser);
		
	}
}
