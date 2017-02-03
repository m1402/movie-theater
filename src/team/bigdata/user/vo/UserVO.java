package team.bigdata.user.vo;

public class UserVO {

	private String id;
	private String pw;
	private String name;
	private String auth;

	public UserVO(String id, String pw, String name, String auth) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.auth = auth;
	}

	public UserVO() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pw=" + pw + ", name=" + name + ", auth=" + auth + "]";
	}

}
