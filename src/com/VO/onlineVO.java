package com.VO;

public class onlineVO {

	private String keyword;
	private String[] age;
	private String sex;
	private String[] perpose;
	private String[] type;
	
	public onlineVO(String keyword, String[] age, String sex, String[] perpose, String[] type) {
		super();
		this.keyword = keyword;
		this.age = age;
		this.sex = sex;
		this.perpose = perpose; //
		this.type = type;
	}
	
	public String[] getType() {
		return type;
	}

	public String getKeyword() {
		return keyword;
	}
	public String[] getAge() {
		return age;
	}
	public String getSex() {
		return sex;
	}
	public String[] getPerpose() {
		return perpose;
	}

	
}
