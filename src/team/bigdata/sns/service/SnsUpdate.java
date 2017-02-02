package team.bigdata.sns.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.sns.dao.SnsDAO;

public class SnsUpdate implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		String snsjemok = request.getParameter("snsjemok");
		String snswriter = request.getParameter("snswriter");
		String snscontent = request.getParameter("snscontent");
		SnsDAO snsdao1 = new SnsDAO();
		snsdao1.update_sns(snswriter, snscontent, snsjemok);

	}
}
