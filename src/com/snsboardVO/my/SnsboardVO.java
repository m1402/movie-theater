package com.snsboardVO.my;

public class SnsboardVO {
     int          bunho;
     String       snsjemok;
     String       snswriter;
     String       snscontent;
     int          basebun;
     int          daetbun;
     int          daetdaetbun;

     public SnsboardVO(){}
     public SnsboardVO(int          bunho,  
    		         String       snsjemok,
                     String       snswriter,
                     String       snscontent,
                     int          basebun,
                     int          daetbun,
                     int          daetdaetbun){
    	 this.bunho=bunho;
    	 this.snsjemok=snsjemok;
    	 this.snswriter=snswriter;
    	 this.snscontent=snscontent;
    	 this.basebun=basebun;
    	 this.daetbun=daetbun;
    	 this.daetdaetbun=daetdaetbun;
    	 
     }
	public int getBunho() {
		return bunho;
	}
	public void setBunho(int bunho) {
		this.bunho = bunho;
	}
	public String getSnsjemok() {
		return snsjemok;
	}
	public void setSnsjemok(String snsjemok) {
		this.snsjemok = snsjemok;
	}
	public String getSnswriter() {
		return snswriter;
	}
	public void setSnswriter(String snswriter) {
		this.snswriter = snswriter;
	}
	public String getSnscontent() {
		return snscontent;
	}
	public void setSnscontent(String snscontent) {
		this.snscontent = snscontent;
	}
	public int getBasebun() {
		return basebun;
	}
	public void setBasebun(int basebun) {
		this.basebun = basebun;
	}
	public int getDaetbun() {
		return daetbun;
	}
	public void setDaetbun(int daetbun) {
		this.daetbun = daetbun;
	}
	public int getDaetdaetbun() {
		return daetdaetbun;
	}
	public void setDaetdaetbun(int daetdaetbun) {
		this.daetdaetbun = daetdaetbun;
	}
}
