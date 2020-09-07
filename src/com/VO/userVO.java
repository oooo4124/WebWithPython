package com.VO;

public class userVO {
	

	private String id;
	private String pw;
	private String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	private String hp;
	private String email;
	private String adr;
	
	private String chief;
	private String corp_name;
	private String corp_adr;
	
	
		public userVO(String id, String pw, String hp, String email, String corp_name) {
		super();
		this.id = id;
		this.pw = pw;
		this.hp = hp;
		this.email = email;
		this.corp_name = corp_name;
	}

		public userVO(String id, String name, String hp, String email, String adr, String chief, String corp_name, String corp_adr) {
		super();
		this.id = id;
		this.name = name;
		this.hp = hp;
		this.email = email;
		this.adr = adr;
		this.chief = chief;
		this.corp_name = corp_name;
		this.corp_adr = corp_adr;
	}
		
		public userVO(String id, String pw, String name, String hp, String email, String adr, String chief,
			String corp_name, String corp_adr) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.hp = hp;
		this.email = email;
		this.adr = adr;
		this.chief = chief;
		this.corp_name = corp_name;
		this.corp_adr = corp_adr;
	}
	


	public userVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
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
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdr() {
		return adr;
	}
	public void setAdr(String adr) {
		this.adr = adr;
	}
	public String getChief() {
		return chief;
	}
	public void setChief(String chief) {
		this.chief = chief;
	}
	public String getCorp_name() {
		return corp_name;
	}
	public void setCorp_name(String corp_name) {
		this.corp_name = corp_name;
	}
	public String getCorp_adr() {
		return corp_adr;
	}
	public void setCorp_adr(String corp_adr) {
		this.corp_adr = corp_adr;
	}
}
