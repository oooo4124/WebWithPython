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
				//캔버스를 이미지로 변환
                var imgData = canvas.toDataURL('image/png');
                var imgWidth = 210;
                var pageHeight = imgWidth * 1.414;
                var imgHeight = canvas.height * imgWidth / canvas.width;
                var heightLeft = imgHeight;
                
                console.log('Report Image URL: '+imgData);
                var doc = new jsPDF('p', 'mm','a4');
                var position = 0;
                
                // 첫 페이지 출력
                doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                heightLeft -= pageHeight;
                
                // 한 페이지 이상일 경우 출력
                while (heightLeft >= 20) {
                    position = heightLeft - imgHeight;
                    doc.addPage();
                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                    heightLeft -= pageHeight;
                  }
                
                //파일 저장
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
	<%//String[] check = request.getParameterValues("소분류"); 
		
		//for(int i = 0; i<check.length; i++){
		//	System.out.println(check[i]);	
		//}
		String 소분류 = request.getParameter("소분류");
		String[] 나이 = request.getParameterValues("나이");
		String 성별 = request.getParameter("성별");
		String[] 목적 = request.getParameterValues("목적");
		String[] 타입 = request.getParameterValues("타입");
		onlineVO vo = new onlineVO(소분류, 나이, 성별, 목적, 타입);
		
		onlineDAO dao = new onlineDAO();
		
		ArrayList<ArrayList<onlineReadVO>> rvo = dao.readOnlineTable(vo);
		%>	
			<h3>추천하는 광고 기법</h3>
			<table>
			  <%for(int i=0; i<목적.length; i++) {%>
			<tr>
			<td colspan="5"><%=rvo.get(3).get(i).get목적() %> 목적에 따른 적합한 광고기법 순위(%)</td>
			</tr>
			<tr>
			<td>1순위</td>
			<td>2순위</td>
			<td>3순위</td>
			<td>4순위</td>
			<td>5순위</td>
			</tr>
			<tr>
			<td><%=rvo.get(3).get(i).get_1순위() %></td>
			<td><%=rvo.get(3).get(i).get_2순위() %></td>
			<td><%=rvo.get(3).get(i).get_3순위() %></td>
			<td><%=rvo.get(3).get(i).get_4순위() %></td>
			<td><%=rvo.get(3).get(i).get_5순위() %></td>
			</tr>
			<%} %>
			</table>
			
			<h3>선택한 광고 종류에 대한 광고 대상 연령, 성별을 고려한 점수</h3>
			<table>
			<tr>
			<td>타겟</td>
			<%for(int i =0; i<vo.getType().length; i++) {%>
			<td><%=vo.getType()[i] %></td>
			<%} %>
			</tr>
			<%for(int i=0; i<rvo.get(4).size(); i++){ %>
			<tr>
			<td><%=rvo.get(4).get(i).get타겟() %> </td>
			<%for(int j=0; j<vo.getType().length; j++){ %>	
				<%if(vo.getType()[j].equals("검색")){ %>
					<td><%=rvo.get(4).get(i).get검색() %></td>
				<%}else if(vo.getType()[j].equals("배너")){ %>	
					<td><%=rvo.get(4).get(i).get배너() %></td>
				<%}else if(vo.getType()[j].equals("동영상")){ %>	
					<td><%=rvo.get(4).get(i).get동영상() %></td>
				<%}else if(vo.getType()[j].equals("SNS")){ %>	
					<td><%=rvo.get(4).get(i).getSNS() %></td>
				<%}else if(vo.getType()[j].equals("플로팅")){ %>	
					<td><%=rvo.get(4).get(i).get플로팅() %></td>
				<%}else if(vo.getType()[j].equals("바이럴")){ %>	
					<td><%=rvo.get(4).get(i).get바이럴() %></td>
				<%}else if(vo.getType()[j].equals("PPL")){ %>	
					<td><%=rvo.get(4).get(i).getPPL()%></td>
				<%}else if(vo.getType()[j].equals("보상형")){ %>	
					<td><%=rvo.get(4).get(i).get보상형() %></td>	
			<%}
			}%>
			</tr>
			<%} %>
			</table>
			
			<h3>추천 블로그</h3>
			<table>
			<tr>
			<td>순위</td>
			<td>링크</td>
			<td>방문수(일)</td>
			<td>견적</td>
			</tr>
				<%if(rvo.get(0).size()==0) {%>
					<tr>
					<td colspan="4">자료가 없습니다.</td>
					</tr>
				<%}else if (rvo.get(0).size()<5){ 
					for(int i=0; i<rvo.get(0).size(); i++) {%>
				<tr>
				<td><%=i+1 %></td>
				<td><a href="<%=rvo.get(0).get(i).get링크()%>"><%=rvo.get(0).get(i).get링크() %></a></td>
				<td><%=rvo.get(0).get(i).get방문수()+"회" %></td>
				<td><input type="button" value="선택"></td>
				</tr>
				<%}
				}else{
					for(int i=0; i<5; i++) {%>
				<tr>
				<td><%=i+1 %></td>
				<td><a href="<%=rvo.get(0).get(i).get링크()%>"><%=rvo.get(0).get(i).get링크() %></a></td>
				<td><%=rvo.get(0).get(i).get방문수()+"회" %></td>
				<td><input type="button" value="선택"></td>
				</tr>
				<%}
				}%>
			</table>
			
			<h3>추천 카페</h3>
			<table>
			<tr>
			<td>순위</td>
			<td>이름</td>
			<td>링크</td>
			<td>방문수(일)</td>
			<td>회원수</td>
			<td>견적</td>
			</tr>
			<%if(rvo.get(1).size()==0) {%>
					<tr>
					<td colspan="6">자료가 없습니다.</td>
					</tr>
				<%}else if (rvo.get(1).size()<5){ 
					for(int i=0; i<rvo.get(1).size(); i++) {%>
					<tr>
						<td><%=i+1 %></td>
						<td><%=rvo.get(1).get(i).get이름() %></td>
						<td><a href="<%=rvo.get(1).get(i).get링크()%>"><%=rvo.get(1).get(i).get링크() %></a></td>
						<td><%=rvo.get(1).get(i).get방문수()+"회" %></td>
						<td><%=rvo.get(1).get(i).get회원수() %></td>
						<td><input type="button" value="선택"></td>
					</tr>
					<%}}else {
						for(int i=0; i<5; i++) {%>
						<tr>
							<td><%=i+1 %></td>
							<td><%=rvo.get(1).get(i).get이름() %></td>
							<td><a href="<%=rvo.get(1).get(i).get링크()%>"><%=rvo.get(1).get(i).get링크() %></a></td>
							<td><%=rvo.get(1).get(i).get방문수()+"회" %></td>
							<td><%=rvo.get(1).get(i).get회원수() %></td>
							<td><input type="button" value="선택"></td>
						</tr>
					<%}
					}%>
			</table>
			
			
			<h3>선택한 주제에 해당하는 키워드에 대한 정보</h3>
			<table>
			<tr>
			<td>키워드</td>
			<td>주성별(M: 남 F: 여 S: 공통)</td>
			<td>1순위연령대</td>
			<td>2순위연령대</td>
			<td>최대유입기간(월)</td>
			<td>최소유입기간(월)</td>
			</tr>
			<%if(rvo.get(2).size()==0){%>
				<tr>
				<td colspan="6">자료가 없습니다.</td>
				</tr>
			<%}else if (rvo.get(2).size() < 5){
				for(int i=0; i<rvo.get(2).size(); i++){ %>
				<tr>
					<td><%=rvo.get(2).get(i).get키워드() %></td>
					<td><%=rvo.get(2).get(i).get주성별() %></td>
					<td><%=rvo.get(2).get(i).get연령대1순위() %></td>
					<td><%=rvo.get(2).get(i).get연령대2순위() %></td>
					<td><%=rvo.get(2).get(i).get최대유입기간() %></td>
					<td><%=rvo.get(2).get(i).get최소유입기간() %></td>
				</tr>
			<%}
			}else{
			for(int i=0; i<5; i++){%>
				<tr>
					<td><%=rvo.get(2).get(i).get키워드() %></td>
					<td><%=rvo.get(2).get(i).get주성별() %></td>
					<td><%=rvo.get(2).get(i).get연령대1순위() %></td>
					<td><%=rvo.get(2).get(i).get연령대2순위() %></td>
					<td><%=rvo.get(2).get(i).get최대유입기간() %></td>
					<td><%=rvo.get(2).get(i).get최소유입기간() %></td>
				</tr>
			<%}
		 	}%>
		 	</table>
	</div>

	<p><button id='pdfDownloader'>pdf생성</button></p>
	<p><button onclick ='javascript:print_page();'>견적서 보기</button></p>
	<%String uri = request.getRequestURI().toString();
	Integer port = request.getServerPort();
	String url = "http://112.164.123.225:"+port+uri+"?"+request.getQueryString();
	out.print(url+"<br>");%>
	<a href="https://dhtml2pdf.herokuapp.com/api.php?url=<%=url %>&result_type=show" target="_blank">Show PDF</a>
	
	
</body>
</html>