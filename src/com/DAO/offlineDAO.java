package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.offlineReadVO;
import com.VO.offlineVO;
import com.VO.onlineReadVO;
import com.VO.onlineVO;

public class offlineDAO {

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
	public ArrayList<ArrayList<offlineReadVO>> readOfflineTable(offlineVO vo) {

		int cnt = 0;
		ArrayList<offlineReadVO> made_ad = new ArrayList<>();
		ArrayList<offlineReadVO> ex_ad = new ArrayList<>();
		ArrayList<ArrayList<offlineReadVO>> returns = new ArrayList<>();

		try {
			getConn();
			
			//제작사
			sql = "select * from made_ad";

			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			offlineReadVO made_adTemp = null;
			while(rs.next()) {
				String 업체 = rs.getString("업체");
				String 링크 = rs.getString("링크");
				
				made_adTemp = new offlineReadVO();
				made_adTemp.setSite(업체, 링크);
				made_ad.add(made_adTemp);
			}
			
			sql = "select * from ex_ad";

			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			offlineReadVO ex_adTemp = null;
			while(rs.next()) {
				String 업체 = rs.getString("업체");
				String 링크 = rs.getString("링크");
				
				ex_adTemp = new offlineReadVO();
				ex_adTemp.setSite(업체, 링크);
				ex_ad.add(ex_adTemp);
			}
			returns.add(made_ad);
			returns.add(ex_ad);
		}catch (Exception e) {
		}
		return returns;
	}
}
