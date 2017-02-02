package team.bigdata.sns.service;

import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.Service;
import team.bigdata.sns.dao.SnsDAO;
import team.bigdata.sns.vo.SnsVO;

public class SnsList implements Service {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws NamingException, Exception {
		SnsDAO snsdao1 = new SnsDAO();
		ArrayList<SnsVO> alist1 = snsdao1.getAllInfo();

		request.setAttribute("alist1", alist1);

	}
}
