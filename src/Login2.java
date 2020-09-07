

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.userDAO;
import com.VO.userVO;

@WebServlet("/Login2")
public class Login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		userVO vo = (userVO)session.getAttribute("vo");
		
		String pw_check = request.getParameter("pw_check");
		
		if(vo.getPw().equals(pw_check))
		{
			System.out.println(vo.getPw());
			response.sendRedirect("html5up-hyperspace/Update.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
		

		
	}
}
