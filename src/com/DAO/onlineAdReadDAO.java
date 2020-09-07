package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class onlineAdReadDAO {
	Connection conn = null;
	PreparedStatement pst = null;
	String sql = null;
	ResultSet rs = null;

	public void getConn() throws Exception {

		InputStream in = getClass().getResourceAsStream("../../../../db.properties");
		// 내 위치를 기준으로 파일 불러와서 인풋스트림에
		Properties p = new Properties(); // 프로퍼티스 형식의 파일임으로 프로퍼티스 객체 생성
		p.load(in); // 프로퍼티스의 load메소드로 인풋스트림을 입력

		Class.forName(p.getProperty("dbclass"));

		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");

		conn = DriverManager.getConnection(url, dbid, dbpw);

	}

	public ArrayList<String> 검색구분(String tableName) {

		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select distinct 구분 from " + tableName;

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("구분"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}

	public ArrayList<String> 조회수출력(String tableName, String where) {

		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 기준조회수 from " + tableName + " where " + "구분 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, where);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("기준조회수"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}

	public String 가격반환(String tableName, String where1, String where2) {

		String price = "0";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 가격 from " + tableName + " where 구분 = ? AND 기준조회수 = ? ";

			pst = conn.prepareStatement(sql);
			pst.setString(1, where1);
			pst.setString(2, where2);

			rs = pst.executeQuery();

			if (rs.next()) {
				price = rs.getString("가격");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;

	}

	public String[] 단위가격반환(String tableName, String where1, String where2) {

		String price[] = new String[2];
		price[0] = "null";
		price[1] = "null";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}
			if (where1.contains("PC")) {
				System.out.println("in the PC");
				sql = "select 판매단위,가격 from " + tableName + " where 구분 = 'PC&MO 메인' AND 판매유닛명 LIKE ?";
				pst = conn.prepareStatement(sql);
				pst.setString(1, "%" + where2 + "%");
			} else {
				sql = "select 판매단위,가격 from " + tableName + " where 구분 = ? AND 판매유닛명 LIKE ?";
				pst = conn.prepareStatement(sql);
				pst.setString(1, where1);
				pst.setString(2, "%" + where2 + "%");

			}

			System.out.println(where1 + "/" + where2);

			rs = pst.executeQuery();

			if (rs.next()) {
				price[0] = rs.getString("판매단위");
				price[1] = rs.getString("가격");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;

	}

	public ArrayList<String> 판매유닛출력(String tableName, String where) {

		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 판매유닛명 from " + tableName + " where 구분 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, where);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("판매유닛명"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}

	public ArrayList<String> 평일주말출력() {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select distinct 평일주말 from 네이버타임보드";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("평일주말"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}

	public String[] 공시단가예상노출량출력(String where1, String where2) {
		String price[] = new String[2];
		price[0] = "null";
		price[1] = "null";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			System.out.println("in the PC");
			sql = "select 공시단가,예상노출량 from 네이버타임보드 where 평일주말 = ? AND 시간대 LIKE ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, where1);
			pst.setString(2, "%" + where2 + "%");

			System.out.println(where1 + "/" + where2);

			rs = pst.executeQuery();

			if (rs.next()) {
				price[0] = rs.getString("공시단가");
				price[1] = rs.getString("예상노출량");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;
	}

	public ArrayList<String> 시간대출력(String tableName, String 평주) {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 시간대 from " + tableName + " where 평일주말 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 평주);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("시간대"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}

	public ArrayList<String> 판매유닛명검색() {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select distinct 판매유닛명 from 네이버홈롤링보드";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("판매유닛명"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}

	public ArrayList<String> 상품구분출력(String tableName, String 판매유닛명) {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 상품구분 from " + tableName + " where 판매유닛명 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 판매유닛명);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("상품구분"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}
	public String[] 판매단위CPM가격출력(String where1, String where2) {
		String price[] = new String[2];
		price[0] = "null";
		price[1] = "null";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			
			sql = "select 판매단위,CPM가격 from 네이버홈롤링보드 where 판매유닛명 = ? and 상품구분 LIKE ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, where1);
			pst.setString(2, "%"+where2+"%");

			System.out.println(where1 + "/" + where2);

			rs = pst.executeQuery();

			if (rs.next()) {
				price[1] = rs.getString("CPM가격");
				price[0] = rs.getString("판매단위");
			}
			conn.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return price;
	}
	public ArrayList<String> 시간대출력() {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 시간대 from 네이버홈통합스페셜DA";

			pst = conn.prepareStatement(sql);
			

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("시간대"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}
	public String 통합스페셜가격출력(String when) {
		String returns = "";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select 가격 from 네이버홈통합스페셜DA where 시간대 = ? ";

			pst = conn.prepareStatement(sql);
			pst.setString(1, when);

			rs = pst.executeQuery();

			if (rs.next()) {
				returns = rs.getString("가격");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return returns;

	}
	public ArrayList<String> 상품명출력 (String tableName) {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select Distinct 상품명 from "+tableName;

			pst = conn.prepareStatement(sql);
			

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("상품명"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;

	}
	public ArrayList<String> 형태출력 (String tableName, String 상품명){
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select distinct 형태 from "+tableName+" where 상품명 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 상품명);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("형태"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;
	}
	public ArrayList<String> 쿼리수반환(String tableName,String 형태) {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select distinct 쿼리수 from "+tableName+" where 형태 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 형태);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("쿼리수"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;
	}
	public ArrayList<String> 쿼리수반환_상품명(String tableName,String 상품명) {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
			}

			sql = "select distinct 쿼리수 from "+tableName+" where 상품명 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 상품명);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("쿼리수"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;
	}
	
	public String 쿼리수당가격반환(String tableName,String 형태,String 쿼리수) {
		String returns= "";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
				System.out.println(tableName);
				System.out.println(형태);
				System.out.println(쿼리수);
			}

			sql = "select 가격 from "+tableName+" where 형태 = ? AND 쿼리수 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 형태);
			pst.setString(2, 쿼리수);

			rs = pst.executeQuery();

			if (rs.next()) {
				returns = rs.getString("가격");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return returns.replaceAll(",", "");
	}
	
	public String 쿼리수당가격반환_상품명(String tableName,String 상품명,String 쿼리수) {
		String returns= "";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
				System.out.println(tableName);
				System.out.println(상품명);
				System.out.println(쿼리수);
			}

			sql = "select 가격 from "+tableName+" where 상품명 = ? AND 쿼리수 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 상품명);
			pst.setString(2, 쿼리수);

			rs = pst.executeQuery();

			if (rs.next()) {
				returns = rs.getString("가격");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return returns.replaceAll(",", "");
	}

	public ArrayList<String> 유튜브구분반환(String tableName,String 상품명) {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
				System.out.println(tableName);
				System.out.println(상품명);
				
			}

			sql = "select 구분 from "+tableName+" where 상품명 = ? ";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 상품명);
			

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("구분"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;
	}
	
	public String 유튜브과금형태가격반환(String 상품명,String 구분) {
		String returns = "";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
				
				System.out.println(상품명);
				System.out.println(구분);
				
			}

			sql = "select 과금형태 , 가격 from 유튜브 where 상품명 = ? and 구분 = ? ";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 상품명);
			pst.setString(2, 구분);
			

			rs = pst.executeQuery();

			while (rs.next()) {
				returns = rs.getString("과금형태")+"/"+rs.getString("가격");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("returns to sql  :  "+returns);
		return returns;
	}
	
	
	public String keyword(String 소주제) {
		String returns = "";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
				
			
				
			}

			sql = "select src from keyword where name = ?  ";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 소주제);
			
			

			rs = pst.executeQuery();

			if (rs.next()) {
				returns = rs.getString("src");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("returns to sql  :  "+returns);
		return returns;
	}
	
	


}
