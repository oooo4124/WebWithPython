<%@page import="com.VO.onlineReadVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineDAO"%>
<%@page import="com.VO.onlineVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-alpha2/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>

<script>
function print_page() {
		var frm = document.print_frm;
		var new_win = window.open('popup.jsp', 'infoWin', "scrollbars=yes,width=635,height=700'"); 
		frm.target ="infoWin"; 
		frm.submit(); 
		new_win.focus();
}
	
</script>

<script>
$(document).ready(function(){ 	
	$("#pdfDownloader").click(function(){
	
        html2canvas(document.getElementById("printDiv"), {
            onrendered: function(canvas) {
				//ĵ������ �̹����� ��ȯ
                var imgData = canvas.toDataURL('image/png');
                var imgWidth = 210;
                var pageHeight = imgWidth * 1.414;
                var imgHeight = canvas.height * imgWidth / canvas.width;
                var heightLeft = imgHeight;
                
                console.log('Report Image URL: '+imgData);
                var doc = new jsPDF('p', 'mm','a4');
                var position = 0;
                
                // ù ������ ���
                doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                heightLeft -= pageHeight;
                
                // �� ������ �̻��� ��� ���
                while (heightLeft >= 20) {
                    position = heightLeft - imgHeight;
                    doc.addPage();
                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                    heightLeft -= pageHeight;
                  }
                
                //���� ����
                doc.save('sample.pdf');
            }
        });
	});
})
</script>
<style>
table{
      border: 1px solid gray;
      width: 70%;
      margin: 0 auto;
      text-align: center;
      font-size: 100px;
   }
   th{
      color : white;
      font-size: 10px;
      height: 20px;
      background-color: gray;
      font-size: 15px;
   }
   td{
      border-bottom: 1px solid whitesmoke;
      font-size: 10px;
      height: 20px;
      font-size: 13px;
   }
   h3{
   	text-align: center;
   }
   p{
   	text-align: center;
   }
   span{
   	text-align: center;
   }
   button{
   	text-align: center;
   }
   h3{
   	margin-top: 30px;
   }
</style>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="printDiv">
	<%//String[] check = request.getParameterValues("�Һз�"); 
		
		//for(int i = 0; i<check.length; i++){
		//	System.out.println(check[i]);	
		//}
		String �Һз� = request.getParameter("�Һз�");
		String[] ���� = request.getParameterValues("����");
		String ���� = request.getParameter("����");
		String[] ���� = request.getParameterValues("����");
		String[] Ÿ�� = request.getParameterValues("Ÿ��");
		onlineVO vo = new onlineVO(�Һз�, ����, ����, ����, Ÿ��);
		
		onlineDAO dao = new onlineDAO();
		
		ArrayList<ArrayList<onlineReadVO>> rvo = dao.readOnlineTable(vo);
		%>	
			<h3>��õ�ϴ� ���� ���</h3>
			<table>
			  <%for(int i=0; i<����.length; i++) {%>
			<tr>
			<td colspan="5"><%=rvo.get(3).get(i).get����() %> ������ ���� ������ ������ ����(%)</td>
			</tr>
			<tr>
			<td>1����</td>
			<td>2����</td>
			<td>3����</td>
			<td>4����</td>
			<td>5����</td>
			</tr>
			<tr>
			<td><%=rvo.get(3).get(i).get_1����() %></td>
			<td><%=rvo.get(3).get(i).get_2����() %></td>
			<td><%=rvo.get(3).get(i).get_3����() %></td>
			<td><%=rvo.get(3).get(i).get_4����() %></td>
			<td><%=rvo.get(3).get(i).get_5����() %></td>
			</tr>
			<%} %>
			</table>
			
			<h3>������ ���� ������ ���� ���� ��� ����, ������ ����� ����</h3>
			<table>
			<tr>
			<td>Ÿ��</td>
			<%for(int i =0; i<vo.getType().length; i++) {%>
			<td><%=vo.getType()[i] %></td>
			<%} %>
			</tr>
			<%for(int i=0; i<rvo.get(4).size(); i++){ %>
			<tr>
			<td><%=rvo.get(4).get(i).getŸ��() %> </td>
			<%for(int j=0; j<vo.getType().length; j++){ %>	
				<%if(vo.getType()[j].equals("�˻�")){ %>
					<td><%=rvo.get(4).get(i).get�˻�() %></td>
				<%}else if(vo.getType()[j].equals("���")){ %>	
					<td><%=rvo.get(4).get(i).get���() %></td>
				<%}else if(vo.getType()[j].equals("������")){ %>	
					<td><%=rvo.get(4).get(i).get������() %></td>
				<%}else if(vo.getType()[j].equals("SNS")){ %>	
					<td><%=rvo.get(4).get(i).getSNS() %></td>
				<%}else if(vo.getType()[j].equals("�÷���")){ %>	
					<td><%=rvo.get(4).get(i).get�÷���() %></td>
				<%}else if(vo.getType()[j].equals("���̷�")){ %>	
					<td><%=rvo.get(4).get(i).get���̷�() %></td>
				<%}else if(vo.getType()[j].equals("PPL")){ %>	
					<td><%=rvo.get(4).get(i).getPPL()%></td>
				<%}else if(vo.getType()[j].equals("������")){ %>	
					<td><%=rvo.get(4).get(i).get������() %></td>	
			<%}
			}%>
			</tr>
			<%} %>
			</table>
			
			<h3>��õ ��α�</h3>
			<table>
			<tr>
			<td>����</td>
			<td>��ũ</td>
			<td>�湮��(��)</td>
			<td>����</td>
			</tr>
				<%if(rvo.get(0).size()==0) {%>
					<tr>
					<td colspan="4">�ڷᰡ �����ϴ�.</td>
					</tr>
				<%}else if (rvo.get(0).size()<5){ 
					for(int i=0; i<rvo.get(0).size(); i++) {%>
				<tr>
				<td><%=i+1 %></td>
				<td><a href="<%=rvo.get(0).get(i).get��ũ()%>"><%=rvo.get(0).get(i).get��ũ() %></a></td>
				<td><%=rvo.get(0).get(i).get�湮��()+"ȸ" %></td>
				<td><input type="button" value="����"></td>
				</tr>
				<%}
				}else{
					for(int i=0; i<5; i++) {%>
				<tr>
				<td><%=i+1 %></td>
				<td><a href="<%=rvo.get(0).get(i).get��ũ()%>"><%=rvo.get(0).get(i).get��ũ() %></a></td>
				<td><%=rvo.get(0).get(i).get�湮��()+"ȸ" %></td>
				<td><input type="button" value="����"></td>
				</tr>
				<%}
				}%>
			</table>
			
			<h3>��õ ī��</h3>
			<table>
			<tr>
			<td>����</td>
			<td>�̸�</td>
			<td>��ũ</td>
			<td>�湮��(��)</td>
			<td>ȸ����</td>
			<td>����</td>
			</tr>
			<%if(rvo.get(1).size()==0) {%>
					<tr>
					<td colspan="6">�ڷᰡ �����ϴ�.</td>
					</tr>
				<%}else if (rvo.get(1).size()<5){ 
					for(int i=0; i<rvo.get(1).size(); i++) {%>
					<tr>
						<td><%=i+1 %></td>
						<td><%=rvo.get(1).get(i).get�̸�() %></td>
						<td><a href="<%=rvo.get(1).get(i).get��ũ()%>"><%=rvo.get(1).get(i).get��ũ() %></a></td>
						<td><%=rvo.get(1).get(i).get�湮��()+"ȸ" %></td>
						<td><%=rvo.get(1).get(i).getȸ����() %></td>
						<td><input type="button" value="����"></td>
					</tr>
					<%}}else {
						for(int i=0; i<5; i++) {%>
						<tr>
							<td><%=i+1 %></td>
							<td><%=rvo.get(1).get(i).get�̸�() %></td>
							<td><a href="<%=rvo.get(1).get(i).get��ũ()%>"><%=rvo.get(1).get(i).get��ũ() %></a></td>
							<td><%=rvo.get(1).get(i).get�湮��()+"ȸ" %></td>
							<td><%=rvo.get(1).get(i).getȸ����() %></td>
							<td><input type="button" value="����"></td>
						</tr>
					<%}
					}%>
			</table>
			
			
			<h3>������ ������ �ش��ϴ� Ű���忡 ���� ����</h3>
			<table>
			<tr>
			<td>Ű����</td>
			<td>�ּ���(M: �� F: �� S: ����)</td>
			<td>1�������ɴ�</td>
			<td>2�������ɴ�</td>
			<td>�ִ����ԱⰣ(��)</td>
			<td>�ּ����ԱⰣ(��)</td>
			</tr>
			<%if(rvo.get(2).size()==0){%>
				<tr>
				<td colspan="6">�ڷᰡ �����ϴ�.</td>
				</tr>
			<%}else if (rvo.get(2).size() < 5){
				for(int i=0; i<rvo.get(2).size(); i++){ %>
				<tr>
					<td><%=rvo.get(2).get(i).getŰ����() %></td>
					<td><%=rvo.get(2).get(i).get�ּ���() %></td>
					<td><%=rvo.get(2).get(i).get���ɴ�1����() %></td>
					<td><%=rvo.get(2).get(i).get���ɴ�2����() %></td>
					<td><%=rvo.get(2).get(i).get�ִ����ԱⰣ() %></td>
					<td><%=rvo.get(2).get(i).get�ּ����ԱⰣ() %></td>
				</tr>
			<%}
			}else{
			for(int i=0; i<5; i++){%>
				<tr>
					<td><%=rvo.get(2).get(i).getŰ����() %></td>
					<td><%=rvo.get(2).get(i).get�ּ���() %></td>
					<td><%=rvo.get(2).get(i).get���ɴ�1����() %></td>
					<td><%=rvo.get(2).get(i).get���ɴ�2����() %></td>
					<td><%=rvo.get(2).get(i).get�ִ����ԱⰣ() %></td>
					<td><%=rvo.get(2).get(i).get�ּ����ԱⰣ() %></td>
				</tr>
			<%}
		 	}%>
		 	</table>
	</div>

	<p><button id='pdfDownloader'>pdf����</button></p>
	<p><button onclick ='javascript:print_page();'>������ ����</button></p>
	<%String uri = request.getRequestURI().toString();
	Integer port = request.getServerPort();
	String url = "http://112.164.123.225:"+port+uri+"?"+request.getQueryString();
	out.print(url+"<br>");%>
	<a href="https://dhtml2pdf.herokuapp.com/api.php?url=<%=url %>&result_type=show" target="_blank">Show PDF</a>
	
	
</body>
</html>