package team.bigdata.user.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.user.dao.UserDAO;

public class UserJoinRequest implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		
		// encoding to EUC-KR
		request.setCharacterEncoding("EUC-KR");
		
		// request parameter parsing
		String id 	= request.getParameter("id");
		String pw 	= request.getParameter("pw");
		String name = request.getParameter("name");
		String auth = request.getParameter("auth");
		
		// DB ��ȸ
		UserDAO userDAO = new UserDAO();
		int userJoinResult = userDAO.userJoinRequest(id, pw, name, auth);
		
		// ������ ����
		request.setAttribute("userJoinResult", userJoinResult);
		
	}
}
