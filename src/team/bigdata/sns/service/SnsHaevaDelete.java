package team.bigdata.sns.service;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.SnsHaevaImpl;
import team.bigdata.sns.dao.SnsboardDAO;
import team.bigdata.sns.vo.SnsboardVO;

public class SnsHaevaDelete implements SnsHaevaImpl {
	public void haeva(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception{
		String snsjemok=request.getParameter("snsjemok");
		SnsboardDAO snsdao1=new SnsboardDAO();
		snsdao1.delete_sns(snsjemok);
		
		
	}
}
