package team.bigdata.movie.vo;

public class MovieVO {

	int num;		// ��ȭ �ѹ���  
	String title;	// ��ȭ ����
	String dir;		// ��ȭ ����
	int bookp;		// ��ȭ ������
	String imgurl;	// ��ȭ �̹���
	String day;		// ��ȭ ������
	String fday;	// ��ȭ ������

	public MovieVO(int num, String title, String dir, int bookp, String imgurl, String day, String fday) {
		super();
		this.num = num;
		this.title = title;
		this.dir = dir;
		this.bookp = bookp;
		this.imgurl = imgurl;
		this.day = day;
		this.fday = fday;
	}

	public MovieVO() {
		super();
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDir() {
		return dir;
	}

	public void setDir(String dir) {
		this.dir = dir;
	}

	public int getBookp() {
		return bookp;
	}

	public void setBookp(int bookp) {
		this.bookp = bookp;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getFday() {
		return fday;
	}

	public void setFday(String fday) {
		this.fday = fday;
	}
	
}
