package team.bigdata.sns.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.sns.dao.SnsDAO;
import team.bigdata.sns.vo.SnsVO;

public class SnsRead implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		String ori_snsjemok = request.getParameter("snsjemok");

		SnsDAO snsdao1 = new SnsDAO();
		SnsVO sv1 = snsdao1.search_sns(ori_snsjemok);

		request.setAttribute("sv1", sv1);

	}
}
