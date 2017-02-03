package team.bigdata.movie.vo;

public class MovieVO {

	int num;		// 영화 넘버링  
	String title;	// 영화 제목
	String dir;		// 영화 감독
	int bookp;		// 영화 예매율
	String imgurl;	// 영화 이미지
	String day;		// 영화 개봉일
	String fday;	// 영화 마감일

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
