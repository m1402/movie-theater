package com.snsboardDAO.my;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.snsboardVO.my.SnsboardVO;

public class SnsboardDAO {
	DataSource ds; ////////////////
	public SnsboardDAO () throws NamingException, SQLException{ //생성자
		
		Context initContext = new InitialContext();
		   Context envContext  = (Context)initContext.lookup("java:/comp/env");
		   ds = (DataSource)envContext.lookup("jdbc/myoracle");
		  // Connection conn = ds.getConnection();
		   //etc.
	}
	public ArrayList<SnsboardVO> getAllInfo() throws SQLException{
		ArrayList<SnsboardVO> array1 = new ArrayList<SnsboardVO>();
		 Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 ResultSet rs1;
		 
		String sql = "SELECT bunho,snsjemok, snswriter, snscontent,basebun,daetbun,daetdaetbun" +
		             " from mvcsnsboard order by basebun desc , daetbun asc";
		
		ps1 = conn.prepareStatement(sql);
		rs1 = ps1.executeQuery();
		while(rs1.next()){
			int bunho = rs1.getInt("bunho");
			String snsjemok = rs1.getString("snsjemok");
			String snswriter = rs1.getString("snswriter");
			String snscontent = rs1.getString("snscontent");
			int basebun = rs1.getInt("basebun");
			int daetbun = rs1.getInt("daetbun");
			int daetdaetbun = rs1.getInt("daetdaetbun");
			
			SnsboardVO svo1 = new SnsboardVO(bunho,snsjemok,snswriter,snscontent,basebun,daetbun,daetdaetbun);
			array1.add(svo1);
		}
		return array1;
	}
	public void insert_sns(String snsjemok, String snswriter, String snscontent) throws SQLException{
		 Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 //ResultSet rs1;
		 
		String sql = "insert into mvcsnsboard  values" +
	        " (mvcsnsboard_sequence1.NEXTVAL,?,?,?,mvcsnsboard_sequence1.CURRVAL,0,0 )";
		
		ps1 = conn.prepareStatement(sql);
		//rs1 = ps1.executeQuery();
			ps1.setString(1,snsjemok);
			ps1.setString(2,snswriter);
			ps1.setString(3, snscontent);
		    
		ps1.executeUpdate();	
		
	}
	public SnsboardVO search_sns(String ori_snsjemok) throws SQLException{
		 Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 ResultSet rs1;
		 
		
		// SnsboardVO sv1=null;
		 SnsboardVO sv1 = new SnsboardVO();
			String sql = "SELECT * FROM mvcsnsboard where snsjemok=?";
			ps1 = conn.prepareStatement(sql);
			ps1.setString(1, ori_snsjemok);
			rs1 = ps1.executeQuery();
			if(rs1.next()){
				String snsjemok=rs1.getString("snsjemok");
				String snswriter=rs1.getString("snswriter");
				String snscontent=rs1.getString("snscontent");
				//sv1=new SnsboardVO(snsjemok,snswriter,snscontent);
				sv1.setSnsjemok(snsjemok);
				sv1.setSnswriter(snswriter);
				sv1.setSnscontent(snscontent);
			}
			else
			{
				sv1=null;
			}
			return sv1;
	}	 
		 //FrontController서블릿도 수정한다
	public void update_sns(String new_snswriter, String new_snscontent,String new_snsjemok) throws SQLException{
		 
		Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 //ResultSet rs1;
		 
			String sql = "update mvcsnsboard set snswriter=? , snscontent=? where snsjemok=?";
			
			try{
				ps1=conn.prepareStatement(sql);
				ps1.setString(1, new_snswriter);
				ps1.setString(2, new_snscontent);
				ps1.setString(3, new_snsjemok);
				ps1.executeUpdate();
			}catch(SQLException e){
				System.out.println("update Exception");
				
			}
			
		}
		
		 //FrontController서블릿도 수정한다
	
	public void delete_sns(String d_snsjemok) throws SQLException{
		 
		Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 //ResultSet rs1;
		 
			String sql = "delete mvcsnsboard where snsjemok=?";
			
			try{
				ps1=conn.prepareStatement(sql);
				ps1.setString(1, d_snsjemok);
				ps1.executeUpdate();
			}catch(SQLException e){
				System.out.println("update Exception");
				
			}
			
		}

}
