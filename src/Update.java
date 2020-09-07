

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.VO.userVO;

@WebServlet("/Update")
public class Update extends HttpServlet {
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
		int cnt = userDAO.Update(vo, pw_check);
		
		if(cnt>0)
		{
			System.out.println("수정성공");
			response.sendRedirect("html5up-hyperspace/UpdateS.jsp");
			userVO vo_1 = userDAO.Select(vo);
			HttpSession session = request.getSession();
            session.setAttribute("vo", vo_1);
		}
		else
		{
			System.out.println("수정실패");
			System.out.println(vo.getPw());
			System.out.println(pw_check);
			response.sendRedirect("html5up-hyperspace/UpdateF.jsp?pw="+pw+"&pw_check="+pw_check);
		}
	}

}
