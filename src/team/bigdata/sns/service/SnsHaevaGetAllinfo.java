package team.bigdata.sns.service;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.bigdata.common.service.SnsHaevaImpl;
import team.bigdata.sns.dao.SnsboardDAO;
import team.bigdata.sns.vo.SnsboardVO;

public class SnsHaevaGetAllinfo implements SnsHaevaImpl {
	public void haeva(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception{
		SnsboardDAO snsdao1=new SnsboardDAO();
		ArrayList <SnsboardVO> alist1=snsdao1.getAllInfo();
		
		request.setAttribute("alist1", alist1);
		
	}
}
