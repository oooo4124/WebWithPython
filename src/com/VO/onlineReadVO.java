package com.VO;

public class onlineReadVO {

	private String 대주제;
	private String 소주제;
	private String 이름;
	private String 링크;
	private String 방문수;
	private String 회원수;

	private String 키워드;
	private String 주성별;
	private String 연령대1순위;
	private String 연령대2순위;
	private String 최대유입기간;
	private String 최소유입기간;
	
	private String 목적;
	private String _1순위;
	private String _2순위;
	private String _3순위;
	private String _4순위;
	private String _5순위;

	private String 타겟;
	private String 검색;
	private String 배너;
	private String 동영상;
	private String SNS;
	private String 플로팅;
	private String 바이럴;
	private String PPL;
	private String 보상형;
	
	
	public String get타겟() {
		return 타겟;
	}

	public String get검색() {
		return 검색;
	}

	public String get배너() {
		return 배너;
	}

	public String get동영상() {
		return 동영상;
	}

	public String getSNS() {
		return SNS;
	}

	public String get플로팅() {
		return 플로팅;
	}

	public String get바이럴() {
		return 바이럴;
	}

	public String getPPL() {
		return PPL;
	}

	public String get보상형() {
		return 보상형;
	}

	public String get목적() {
		return 목적;
	}
	
	public String get_1순위() {
		return _1순위;
	}

	public String get_2순위() {
		return _2순위;
	}

	public String get_3순위() {
		return _3순위;
	}

	public String get_4순위() {
		return _4순위;
	}

	public String get_5순위() {
		return _5순위;
	}

	public String get대주제() {
		return 대주제;
	}

	public String get소주제() {
		return 소주제;
	}

	public String get이름() {
		return 이름;
	}

	public String get링크() {
		return 링크;
	}

	public String get방문수() {
		return 방문수;
	}

	public String get회원수() {
		return 회원수;
	}

	public String get키워드() {
		return 키워드;
	}

	public String get주성별() {
		return 주성별;
	}

	public String get연령대1순위() {
		return 연령대1순위;
	}

	public String get연령대2순위() {
		return 연령대2순위;
	}

	public String get최대유입기간() {
		return 최대유입기간;
	}

	public String get최소유입기간() {
		return 최소유입기간;
	}

	public void setCafe(String 대주제, String 소주제, String 이름, String 링크, String 방문수, String 회원수) {

		this.대주제 = 대주제;
		this.소주제 = 소주제;
		this.이름 = 이름;
		this.링크 = 링크;
		this.방문수 = 방문수;
		this.회원수 = 회원수;

	}

	public void setBlog(String 대주제, String 소주제, String 링크, String 방문수) {

		this.대주제 = 대주제;
		this.소주제 = 소주제;
		this.링크 = 링크;
		this.방문수 = 방문수;

	}
	public void setPerpose(String 목적, String _1순위, String _2순위, String _3순위 , String _4순위, String _5순위) {

		this.목적 = 목적;
		this._1순위 = _1순위;
		this._2순위 = _2순위;
		this._3순위 = _3순위;
		this._4순위 = _4순위;
		this._5순위 = _5순위;
	}

	public void setCategory(String 대주제, String 소주제, String 키워드, String 주성별, String 연령대1순위, String 연령대2순위, String 최대유입기간,
			String 최소유입기간) {

		this.대주제 = 대주제;
		this.소주제 = 소주제;
		this.키워드 = 키워드;
		this.주성별 = 주성별;
		this.연령대1순위 = 연령대1순위;
		this.연령대2순위 = 연령대2순위;
		this.최대유입기간 = 최대유입기간;
		this.최소유입기간 = 최소유입기간;

	}
	public void setTarget_score(String 타겟, String 검색, String 배너, String 동영상, String SNS, String 플로팅, String 바이럴,
			String PPL, String 보상형) {

		this.타겟 = 타겟;
		this.검색 = 검색;
		this.배너 = 배너;
		this.동영상 = 동영상;
		this.SNS = SNS;
		this.플로팅 = 플로팅;
		this.바이럴 = 바이럴;
		this.PPL = PPL;
		this.보상형 = 보상형;

	}
	
}
