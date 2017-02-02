package team.bigdata.common.service;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {

public void execute(HttpServletRequest request,  HttpServletResponse response) throws NamingException, Exception;

}
