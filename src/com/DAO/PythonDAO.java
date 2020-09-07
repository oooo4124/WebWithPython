package com.DAO;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Scanner;

public class PythonDAO {

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

	public String[] pytest(String sexage, ArrayList<String> arr2) throws IOException {

		
		
		String[] newarr = new String[arr2.size()];
		
		
		for(int i = 0 ; i< newarr.length ; i++) {
			newarr[i] = arr2.get(i);
		}
		
		String[] arr = newarr;
		
		
		
		String[] temp = new String[]{"/Users/jaeone/anaconda3/bin/python3.7",
				"/Users/jaeone/Python/Untitled Folder/testtest2.py", "20190702", sexage};
        

 

        /* 두 배열을 하나로 담을 배열변수 선언 */
        String[] iDst  = new String[temp.length + arr.length];

 

        /* iSrc1을 먼저 iDst에 담는다. */

        System.arraycopy(temp, 0, iDst, 0, temp.length);

 

        /* iSrc2을 다음으로 iDst에 담는다. */
        System.arraycopy(arr, 0, iDst, temp.length, arr.length);

 

        /* 결과출력 */

        for (int i = 0; i < iDst.length; i++) {
            System.out.print(iDst[i]+"\n");
        }
        System.out.println("==================");
		
		

		ProcessBuilder builder = new ProcessBuilder(iDst);
//				
		
		Process process = builder.start();
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		try {
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[] returns = new String[7];

		// ���� ��Ʈ�� from ���̽�����
		while (errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();

		// �Է� ��Ʈ�� from ���̽�����
		int cnt = 0;
		while (outputScanner.hasNext()) {
			returns[cnt] = outputScanner.nextLine();
			cnt++;
			
		}
		outputScanner.close();

		return returns;
	}

	
public String[] pytest(String sexage) throws IOException {

		
		
		
		
		
		
		String[] temp = new String[]{"/Users/jaeone/anaconda3/bin/python3.7",
				"/Users/jaeone/Python/Untitled Folder/testtest3.py", "20190702", sexage};
        

 

        

		ProcessBuilder builder = new ProcessBuilder(temp);
//				
		
		Process process = builder.start();
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		try {
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[] returns = new String[7];

		// ���� ��Ʈ�� from ���̽�����
		while (errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();

		// �Է� ��Ʈ�� from ���̽�����
		int cnt = 0;
		while (outputScanner.hasNext()) {
			returns[cnt] = outputScanner.nextLine();
			cnt++;
			
		}
		outputScanner.close();

		return returns;
	}

	
	
	
	public ArrayList<String> print_gu() {
		ArrayList<String> arr = new ArrayList<>();

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");

			}

			sql = "select distinct gu from seoul ";

			pst = conn.prepareStatement(sql);

			rs = pst.executeQuery();

			while (rs.next()) {
				arr.add(rs.getString("gu"));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return arr;
	}

	public ArrayList<String> print_gudong(String[] strings) {
		ArrayList<String> arr = new ArrayList<>();

		for (int i = 0; i < strings.length; i++) {

			try {
				getConn();
				if (conn != null) {
					System.out.println("DB접속성공");

				}

				sql = "select dong from seoul where gu = ?";

				pst = conn.prepareStatement(sql);
				pst.setString(1, strings[i]);
				rs = pst.executeQuery();

				while (rs.next()) {
					arr.add("서울 "+strings[i]+" "+rs.getString("dong"));
				}

				conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
		for(int i = 0 ; i< arr.size(); i++) {
			System.out.println(arr.get(i));
		}
		return arr;
	}
	
	public String location(String 지역명) {
		String returns = "";

		try {
			getConn();
			if (conn != null) {
				System.out.println("DB접속성공");
				
			
				
			}

			sql = "select src from location where name = ?  ";

			pst = conn.prepareStatement(sql);
			pst.setString(1, 지역명);
			
			

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
