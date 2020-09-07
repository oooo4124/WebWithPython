package com.example;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.onlineDAO;
import com.VO.onlineReadVO;
import com.VO.onlineVO;

@WebServlet("/onlineCon")
public class onlineCon extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String 소분류 = req.getParameter("소분류");
		String[] 나이 = req.getParameterValues("나이");
		String 성별 = req.getParameter("성별");
		String[] 목적 = req.getParameterValues("목적");
		String[] 타입 = req.getParameterValues("타입");
		onlineVO vo = new onlineVO(소분류,나이,성별,목적,타입);
		
		onlineDAO dao = new onlineDAO();
		
		ArrayList<ArrayList<onlineReadVO>> rvo = dao.readOnlineTable(vo);
			
			for(int i=0; i<5; i++) {
			System.out.print(rvo.get(0).get(i).get대주제()+"\t");
			System.out.print(rvo.get(0).get(i).get소주제()+"\t");
			System.out.print(rvo.get(0).get(i).get링크()+"\t\t");
			System.out.println(rvo.get(0).get(i).get방문수());
			}
	}
}
