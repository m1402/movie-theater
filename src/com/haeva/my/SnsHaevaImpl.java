package com.haeva.my;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface SnsHaevaImpl {

public void haeva(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception;

}
