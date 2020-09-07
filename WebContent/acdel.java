package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.VO.userVO;


@WebServlet("/acdel")
public class acdel extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		userVO vo = (userVO)session.getAttribute("vo");
		
		userDAO dao = new userDAO();
		
		int cnt = dao.Delete(vo.getId());
		
		if(cnt > 0 ) {
			System.out.println("회원 탈퇴 성공");
			response.sendRedirect("html5up-hyperspace/delS.jsp");
		}else {
			System.out.println("회원 탈퇴 실패");
			response.sendRedirect("html5up-hyperspace/delF.jsp");
		}
	}

}
