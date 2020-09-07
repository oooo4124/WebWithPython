package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.userDAO;
import com.VO.userVO;

@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw_check = request.getParameter("pw_check");
		
		String name = request.getParameter("name");
		String hp = request.getParameter("hp");
		String email = request.getParameter("email");
		String adr = request.getParameter("adr");
		
		String chief = request.getParameter("chief");
		String corp_name = request.getParameter("corp_name");
		String corp_adr = request.getParameter("corp_adr");
		
		userVO vo = new userVO(id, pw, name,  hp, email, adr, chief, corp_name, corp_adr);
		

		userDAO userDAO = new userDAO();
		int cnt = userDAO.Insert(vo);
		
			if(cnt>0)
			{
				System.out.println("입력성공");
				response.sendRedirect("html5up-hyperspace/JoinS.jsp");
			}
			else
			{
				System.out.println("입력실패");
				response.sendRedirect("html5up-hyperspace/JoinF.jsp");
			}
	}
}
