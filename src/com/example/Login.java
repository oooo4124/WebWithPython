package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;

import com.DAO.userDAO;
import com.VO.userVO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String hp = request.getParameter("hp");
		String email = request.getParameter("email");
		String corp_name = request.getParameter("corp_name");
		
		userDAO userDAO = new userDAO();
		userVO vo = new userVO(id, pw);

		
		userVO vo_1 = userDAO.Select(vo);
		
			if(vo_1 != null)
			{
				System.out.println("로그인성공");
				HttpSession session = request.getSession();
                session.setAttribute("vo", vo_1);
				response.sendRedirect("html5up-hyperspace/index.jsp");
			}
			else
			{
				System.out.println("로그인실패");
				response.sendRedirect("html5up-hyperspace/LoginF.jsp");
			}
	}
}
