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
		
		// DB ��ȸ
		UserDAO userDAO = new UserDAO();
		boolean isUser = userDAO.userLoginCheck(id, pw, request);
		
		// ������ ����
		request.setAttribute("isUser", isUser);
		
	}
}
