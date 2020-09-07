package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import org.apache.catalina.connector.Response;

import com.VO.userVO;

public class userDAO {
	
	public userVO Select(userVO vo)
	{
		userVO vo_1 = null;
		try {
			Connection conn = EM();
	
			String sql = "select * from user_info where id = ? and pw = ?";
			PreparedStatement pst =  conn.prepareStatement(sql);
			pst.setString(1, vo.getId());
			pst.setString(2, vo.getPw());
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				vo_1 = new userVO(rs.getString(1), 
								  rs.getString(2), 
								  rs.getString(3), 
								  rs.getString(4),
								  rs.getString(5),
								  rs.getString(6),
								  rs.getString(7),
								  rs.getString(8),
								  rs.getString(9));
			}

			
		} catch (Exception e) {
		} 
		
		return vo_1;
	}
	
	public int Insert(userVO vo)
	{
		int cnt = 0;
		try {
			
			Connection conn = EM();
			

			
			String sql = "select * from user_info where id = ?";
			PreparedStatement pst =  conn.prepareStatement(sql);
			pst.setString(1, vo.getId());
			ResultSet rs = pst.executeQuery();
			
			if(vo.getId().isBlank()) 
			{
				return 0;
			}
			
			while(rs.next())
			{
				if (rs.getString(2).equals(vo.getId())) {
					return 0;
				}
			}
			
			sql = "insert into user_info values(?, ?, ?, ?, ?, ?, ?, ?, ?);";
			
			pst =  conn.prepareStatement(sql);
			pst.setString(1, vo.getId());
			pst.setString(2, vo.getPw());
			pst.setString(3, vo.getName());
			pst.setString(4, vo.getHp());
			pst.setString(5, vo.getEmail());
			pst.setString(6, vo.getAdr());
			pst.setString(7, vo.getChief());
			pst.setString(8, vo.getCorp_name());
			pst.setString(9, vo.getCorp_adr());
			
			
			cnt = pst.executeUpdate();
			
		} catch (Exception e) {
			
		}
		
		return cnt;
	}

	public Connection EM() throws Exception {
		InputStream in = getClass().getResourceAsStream("../../../../db.properties");
		// 내 위치를 기준으로 파일 불러와서 인풋스트림에
		Properties p = new Properties(); // 프로퍼티스 형식의 파일임으로 프로퍼티스 객체 생성
		p.load(in); // 프로퍼티스의 load메소드로 인풋스트림을 입력

		Class.forName(p.getProperty("dbclass"));

		String url = p.getProperty("dburl");
		String dbid = p.getProperty("dbid");
		String dbpw = p.getProperty("dbpw");
		
		Connection conn = DriverManager.getConnection(url, dbid, dbpw);
		return conn;
	}
	
	public int Delete(String id)
	{
		int cnt = 0;
		try {
			Connection conn = EM();
			
			String sql = "delete from user_info where id = ?";
			PreparedStatement pst =  conn.prepareStatement(sql);
			pst.setString(1, id);
			
			cnt = pst.executeUpdate();
			if(cnt>0)
			{
				System.out.println("삭제성공");
			}
			else
			{
				System.out.println("삭제실패");
			}
		} catch (Exception e) {
		}
		return cnt;
	}
	
	public int Update(String id, String data, String choice)
	{
		int cnt = 0;
		try {
			Connection conn = EM();
			
			String sql = "";
			
			if(choice.equals("pw"))
			{
				sql = "update mem set pw = ? where id = ?;";
			}
			else if(choice.equals("hp"))
			{
				sql = "update mem set hp = ? where id = ?;";
			}
			else if(choice.equals("salary"))
			{
				sql = "update mem set salary = ? where id = ?;";
			}
			else if(choice.equals("email"))
			{
				sql = "update mem set emaill = ? where id = ?;";
			}
			else
			{
				sql = "update mem set address = ? where id = ?;";
			}

			PreparedStatement pst =  conn.prepareStatement(sql);
			cnt = pst.executeUpdate();
			pst.setString(1, data);
			pst.setString(2, id);
		} catch (Exception e) {
		}
		
		return cnt;
	}
	PreparedStatement pst = null;
	
	public int Update(userVO vo, String pw_check)
	{
		int cnt = 0;
		try {

			Connection conn = EM();
			if(!vo.getPw().equals(pw_check) ) {
				return 0;
			}else {
			
			String sql = "update user_info set pw = ?, name = ?, hp = ?, email = ?, adr = ?, chief = ?, corp_name=?, corp_adr=? where id=?"; 
	
			
			pst =  conn.prepareStatement(sql);
			
			pst.setString(1, vo.getPw());
			pst.setString(2, vo.getName());
			pst.setString(3, vo.getHp());
			pst.setString(4, vo.getEmail());
			pst.setString(5, vo.getAdr());
			pst.setString(6, vo.getChief());
			pst.setString(7, vo.getCorp_name());
			pst.setString(8, vo.getCorp_adr());
			pst.setString(9, vo.getId());
			
			cnt = pst.executeUpdate();
			}
		} catch (Exception e) {
		}
		return cnt;
	}
	
}
