package com.frontcontroller.my;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.haeva.my.SnsHaevaDelete;
import com.haeva.my.SnsHaevaGetAllinfo;
import com.haeva.my.SnsHaevaImpl;
import com.haeva.my.SnsHaevaInsert;
import com.haeva.my.SnsHaevasearchOne;
import com.haeva.my.SnsHaevaupdate;

/**
 * Servlet implementation class SnsFrontController
 */
//@WebServlet("/SnsFrontController")
@WebServlet("*.do") /////////////////////변경
public class SnsFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SnsFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String c1=request.getRequestURI().substring(request.getContextPath().length());
		SnsHaevaImpl scmd1=null;
		String kaja=null;
		
	    if(c1.equals("/getAllinfo.do")){ /////////////////////
		  scmd1= new  SnsHaevaGetAllinfo();
		  try {
			scmd1.haeva(request, response);
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  kaja="getAllinfo.jsp"; /////////////////
	}
	    else if(c1.equals("/keulWriting.do")) {
	    	    scmd1=new SnsHaevaInsert();
	    	    try {
					scmd1.haeva(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
	    	   kaja="keulWriting.jsp";
	    	
	    	
	    }   else if(c1.equals("/keulSearchOne.do")) {
    	    scmd1=new SnsHaevasearchOne();
    	    try {
				scmd1.haeva(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
    	   kaja="keulSearchOne.jsp";
    	  //jsp를 만든다
    	
    } else if(c1.equals("/keulUpdating.do")) {
	    scmd1=new SnsHaevaupdate();
	    try {
			scmd1.haeva(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	   kaja="getAllinfo.do";
	  //jsp를 안만들고 .do호출
	
}  else if(c1.equals("/keulDeleting.do")) {
    scmd1=new SnsHaevaDelete();
    try {
		scmd1.haeva(request, response);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
   kaja="getAllinfo.do";
	  //jsp를 안만들고 .do호출
}     
       
	    
	    
	    
	    RequestDispatcher rd1=request.getRequestDispatcher(kaja);
	    rd1.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
