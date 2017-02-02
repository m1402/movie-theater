package team.bigdata.sns.service;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.SnsHaevaImpl;
import team.bigdata.sns.dao.SnsboardDAO;
import team.bigdata.sns.vo.SnsboardVO;

public class SnsHaevasearchOne implements SnsHaevaImpl {
	public void haeva(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception{
		String ori_snsjemok=request.getParameter("snsjemok");
		
		SnsboardDAO snsdao1=new SnsboardDAO();
		SnsboardVO sv1=snsdao1.search_sns(ori_snsjemok);
		
		request.setAttribute("sv1", sv1);
		
	}
}
