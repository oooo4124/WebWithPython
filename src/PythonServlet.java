

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PythonServlet")
public class PythonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProcessBuilder builder = new ProcessBuilder("/Users/jaeone/anaconda3/bin/python3.7",
				"/Users/jaeone/Python/Untitled Folder/testtest2.py","20190702","여자30세부터34세생활인구수","서울 강남구 역삼1동","서울 영등포구 여의동","서울 종로구 종로1.2.3.4가동");
		Process process = builder.start();
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		try {
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		// ���� ��Ʈ�� from ���̽�����
		while(errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();
		
		// �Է� ��Ʈ�� from ���̽�����
		
		
		while(outputScanner.hasNext()) {
			System.out.println(outputScanner.nextLine());
		}
		outputScanner.close();
		
		
	}

}
