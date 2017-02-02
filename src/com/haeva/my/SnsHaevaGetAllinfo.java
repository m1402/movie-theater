package com.haeva.my;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.snsboardDAO.my.SnsboardDAO;
import com.snsboardVO.my.SnsboardVO;

public class SnsHaevaGetAllinfo implements SnsHaevaImpl {
	public void haeva(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception{
		SnsboardDAO snsdao1=new SnsboardDAO();
		ArrayList <SnsboardVO> alist1=snsdao1.getAllInfo();
		
		request.setAttribute("alist1", alist1);
		
	}
}
