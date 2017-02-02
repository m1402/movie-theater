package com.haeva.my;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.snsboardDAO.my.SnsboardDAO;
import com.snsboardVO.my.SnsboardVO;

public class SnsHaevaupdate implements SnsHaevaImpl {
	public void haeva(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception{
		String snsjemok=request.getParameter("snsjemok");
		String snswriter=request.getParameter("snswriter");
		String snscontent=request.getParameter("snscontent");
		SnsboardDAO snsdao1=new SnsboardDAO();
		snsdao1.update_sns(snswriter, snscontent, snsjemok);
		
		
	}
}
