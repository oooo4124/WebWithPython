package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.onlineReadVO;
import com.VO.onlineVO;


public class onlineDAO {
	
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

	public ArrayList<ArrayList<onlineReadVO>> readOnlineTable(onlineVO vo) {

		int cnt = 0;
		ArrayList<onlineReadVO> blog = new ArrayList<>();
		ArrayList<onlineReadVO> cafe = new ArrayList<>();
		ArrayList<onlineReadVO> category = new ArrayList<>();
		ArrayList<onlineReadVO> perpose = new ArrayList<>();
		ArrayList<onlineReadVO> target = new ArrayList<>();
		ArrayList<ArrayList<onlineReadVO>> returns = new ArrayList<>();

		try {
			getConn();
			
			//블로그 소주제로 검색
			sql = "select * from blog where 소주제 = ? order by 방문수 desc";

			pst = conn.prepareStatement(sql);
			pst.setString(1, vo.getKeyword());
			
			rs = pst.executeQuery();
			onlineReadVO blogTemp = null;
			while(rs.next()) {
				String 대주제 = rs.getString("대주제");
				String 소주제 = rs.getString("소주제");
				String 링크 = rs.getString("링크");
				String 방문수 = rs.getString("방문수");
				blogTemp = new onlineReadVO();
				blogTemp.setBlog(대주제, 소주제, 링크, 방문수);
				blog.add(blogTemp);
			}
			//카페 소주제로 검색
			sql = "select * from cafe where 소주제 = ? order by 방문수 desc";

			pst = conn.prepareStatement(sql);
			pst.setString(1, vo.getKeyword());
			
			rs = pst.executeQuery();
			onlineReadVO cafeTemp = null;
			while(rs.next()) {
				String 대주제 = rs.getString("대주제");
				String 소주제 = rs.getString("소주제");
				String 이름 = rs.getString("이름");
				String 링크 = rs.getString("링크");
				String 방문수 = rs.getString("방문수");
				String 회원수 = rs.getString("회원수");
						
				cafeTemp = new onlineReadVO();
				cafeTemp.setCafe(대주제, 소주제, 이름, 링크, 방문수, 회원수);
				cafe.add(cafeTemp);
			}
			// 목적으로 순위
			sql = "select * from perpose where 목적 = ?";

			pst = conn.prepareStatement(sql);
			for (int i = 0; i < vo.getPerpose().length; i++) {
				pst.setString(1, vo.getPerpose()[i]);
				
				rs = pst.executeQuery();
				onlineReadVO perposeTemp = null;
				while(rs.next()) {
					String 목적 = rs.getString("목적");
					String _1순위 = rs.getString("1순위");
					String _2순위 = rs.getString("2순위");
					String _3순위 = rs.getString("3순위");
					String _4순위 = rs.getString("4순위");
					String _5순위 = rs.getString("5순위");
							
					perposeTemp = new onlineReadVO();
					perposeTemp.setPerpose(목적, _1순위, _2순위, _3순위, _4순위, _5순위);
					perpose.add(perposeTemp);
			}
			}
			
			//카테고리 소주제로 검색
			sql = "select * from category where 소주제 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, vo.getKeyword());
			
			rs = pst.executeQuery();
			onlineReadVO categoryTemp = null;
			while(rs.next()) {
				String 대주제 = rs.getString("대주제");
				String 소주제 = rs.getString("소주제");
				String 키워드 = rs.getString("키워드");
				String 주성별 = rs.getString("주성별");
				String 연령대1순위 = rs.getString("1순위연령대");
				String 연령대2순위 = rs.getString("2순위연령대");
				String 최대유입기간 = rs.getString("최대유입기간");
				String 최소유입기간 = rs.getString("최소유입기간");
						
				categoryTemp = new onlineReadVO();
				categoryTemp.setCategory(대주제, 소주제, 키워드, 주성별, 연령대1순위, 연령대2순위, 최대유입기간, 최소유입기간);
				category.add(categoryTemp);
			}
			//선택한 스코어 검색
			sql = "select * from target_score where 타겟 = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, vo.getSex());
			rs = pst.executeQuery();
			onlineReadVO target_scoreTemp = null;
			while(rs.next()) {
				String 타겟 = rs.getString("타겟");
				String 검색 = rs.getString("검색");
				String 배너 = rs.getString("배너");
				String 동영상 = rs.getString("동영상");
				String SNS = rs.getString("SNS");
				String 플로팅 = rs.getString("플로팅");
				String 바이럴 = rs.getString("바이럴");
				String PPL = rs.getString("PPL");
				String 보상형 = rs.getString("보상형");
						
				target_scoreTemp = new onlineReadVO();
				target_scoreTemp.setTarget_score(타겟, 검색, 배너, 동영상, SNS, 플로팅, 바이럴, PPL, 보상형);
				target.add(target_scoreTemp);
			}
				for (int i = 0; i < vo.getAge().length; i++) {
					sql = "select * from target_score where 타겟 = ?";

					pst = conn.prepareStatement(sql);
					pst.setString(1, vo.getAge()[i]);
					rs = pst.executeQuery();
					target_scoreTemp = null;
					while(rs.next()) {
						String 타겟 = rs.getString("타겟");
						String 검색 = rs.getString("검색");
						String 배너 = rs.getString("배너");
						String 동영상 = rs.getString("동영상");
						String SNS = rs.getString("SNS");
						String 플로팅 = rs.getString("플로팅");
						String 바이럴 = rs.getString("바이럴");
						String PPL = rs.getString("PPL");
						String 보상형 = rs.getString("보상형");
								
						target_scoreTemp = new onlineReadVO();
						target_scoreTemp.setTarget_score(타겟, 검색, 배너, 동영상, SNS, 플로팅, 바이럴, PPL, 보상형);
						target.add(target_scoreTemp);
				}
			}
			//ArrayList	에 각각 ArrayList담기 
			returns.add(blog);
			returns.add(cafe);
			returns.add(category);
			returns.add(perpose);
			returns.add(target);
			
			
			
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		return returns;

	}

}
