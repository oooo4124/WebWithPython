<%@page import="java.util.Calendar"%>
<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="nowDate" class="java.util.Date" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style="font-size: 25px" height='70' align="center" bgcolor="#F5F5F5" ><strong>견 적 서</strong></td>
  </tr>

</table>
<br>
<%
userVO vo = (userVO)session.getAttribute("vo");
Calendar cal = Calendar.getInstance(); 
response.setCharacterEncoding("euc-kr");%>

<%!
public String priceCal(String price)  {
	String[] priceA = price.split("");
	price = "";
	int cnt = 0;
	System.out.println(price);
	for(int i = priceA.length-1; i >= 0 ; i--){
		if(cnt==2&&i!=0){
			price += priceA[i]+",";
			cnt = 0;
		}
		else{
			price += priceA[i];
			cnt++;
		}
	}
	System.out.println(price);
	String[] priceB = price.split("");
	price = "";
	for(int i = priceB.length-1; i >= 0 ; i--){
		price += priceB[i];
	}
	System.out.println(price);
	return price;
} %>

	<table width='100%' border="1" cellpadding="0" cellspacing="0">
        <tr bgcolor="f3f3f3">
          <td align="center"><span class="bold">업체 이름</span></td>
          <td bgcolor="#FFFFFF" style="padding-left:15px"><%=vo.getCorp_name() %></td>
        </tr>
        <tr bgcolor="f3f3f3">
          <td height="28" align="center" class="line_box hline_box"><span class="bold">날짜</span></td>
          <td bgcolor="#FFFFFF" class="line_box" style="padding-left:15px"><%=cal.get(Calendar.MONTH)+1%>월 <%=cal.get(Calendar.DATE)%>일</td>
        </tr>
        <tr bgcolor="f3f3f3">
          <td height="28" align="center" class="line_box hline_box"><span class="bold">연락처</span></td>
          <td bgcolor="#FFFFFF" class="line_box" style="padding-left:15px"><%=vo.getHp() %></td>
        </tr>
        <tr bgcolor="f3f3f3">
          <td height="28" align="center" class="line_boxh3 hline_box"><span class="bold">EMAIL</span></td>
          <td bgcolor="#FFFFFF" class="line_boxh3" style="padding-left:15px"><%=vo.getEmail() %></td>
        </tr>
      </table>
<br>
<span ><br /></span>

<table width="100%"  border="1" cellpadding="0" cellspacing="0">
				<%String finalprice[] = request.getParameterValues("finalprice");
				String finalprice1[] = request.getParameterValues("finalprice1");
                String product[] = request.getParameterValues("product");
                String amount[] = request.getParameterValues("amount");
                String price[] = request.getParameterValues("price");
                String kind[] = request.getParameterValues("kind");
                String product1[] = request.getParameterValues("product1");
                String amount1[] = request.getParameterValues("amount1");
                String price1[] = request.getParameterValues("price1");
                
                System.out.println(finalprice[0]);
                System.out.println(finalprice1[0]);%>
                
                <%if(!finalprice[0].equals("0")){ %>
                <tr bgcolor="f3f3f3" height='40px'><td colspan='3' style="text-align: center; font-weight: bold;">광고 제작 견적</td></tr>
                <tr bgcolor="f3f3f3">
                    <td height="28" style="text-align:right; padding-right: 15px;"><strong>규격</strong></td>
                    <td height="28" style="text-align:right; padding-right: 15px;"><strong>수량</strong></td>
                    <td style="text-align:right; padding-right:15px;"><strong>가 격</strong></td>
                </tr>
              
                	<%for(int i=0; i<product.length; i++){ %>
                <tr>
                <td style="text-align: right; padding-right: 15px"><%=product[i]%></td>
                <td style="text-align: right; padding-right: 15px"><%=amount[i]+"매"%></td>
                <td style="text-align: right; padding-right: 15px"><%=priceCal(price[i])+"원"%></td>
                </tr>
                <%} %> 
                
                <tr bgcolor="f3f3f3">
                        <td height="28" colspan='2' style="text-align:center; padding-right:15px"><strong>제작 예상 가격 </strong></td>
                        <td style=" text-align:right; padding-right:15px"><%=priceCal(finalprice[0]) %>원</td>
                </tr>
                </table><br>
				<%}if(!finalprice1[0].equals("0")){ %>
				<table width="100%"  border="1" cellpadding="0" cellspacing="0">
				<tr bgcolor="f3f3f3" height='40px'><td colspan='4' style="text-align: center; font-weight: bold;">광고 배포 견적</td></tr>
				<tr bgcolor="f3f3f3">
                    <td height="28" style=" text-align:right; padding-right:15px"><strong>종류</strong></td>
                    <td height="28" style=" text-align:right; padding-right:15px"><strong>규격</strong></td>
                    <td height="28" style=" text-align:right; padding-right:15px"><strong>수량</strong></td>
                    <td height="28" style="text-align:right; padding-right:15px"><strong>가 격</strong></td>
                </tr>
    			<%for(int i=0; i<product1.length; i++){ %>
                <tr>
                <td style="text-align: right; padding-right: 15px"><%=kind[i]%></td>
                <td style="text-align: right; padding-right: 15px"><%=product1[i]%></td>
                <td style="text-align: right; padding-right: 15px"><%=amount1[i]+"매"%></td>
                <td style="text-align: right; padding-right: 15px"><%=priceCal(price1[i])+"원"%></td>
                </tr>
                <%} %> 
                <tr bgcolor="f3f3f3">
                        <td height="28" colspan='3' style="text-align:center; padding-left:15px"><strong>제작 예상 가격 </strong></td>
                        <td style="text-align:right; padding-right:15px"><%=priceCal(finalprice1[0]) %>원</td>
                </tr>
                <%} %>
<br>

</table>
<br>
<table style="text-align: center;" width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
     <td><img width="300px" height="80px" src="logo2.png"><td>
     </tr>
  <tr>
    <td height="70" align="center"><input name="button2" type="button" onclick="javascript:window.print();" style="width:110px;height:30px;margin:5px;" value="견적서 출력" />
    <input name="button22" type="button" onclick="javascript:self.close();" style="width:110px;height:30px;margin:5px;" value="닫 기" /></td>
  </tr>
</table>
</body>
</html>