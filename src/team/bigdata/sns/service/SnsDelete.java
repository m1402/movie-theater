package team.bigdata.sns.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.sns.dao.SnsDAO;

public class SnsDelete implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		String snsjemok = request.getParameter("snsjemok");
		SnsDAO snsdao1 = new SnsDAO();
		snsdao1.delete_sns(snsjemok);

	}
}
