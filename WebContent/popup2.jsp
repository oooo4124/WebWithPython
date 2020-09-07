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
request.setCharacterEncoding("utf-8");%>
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
<%String[] arr = (String[])request.getParameterValues("final");
String[] arr2 = (String[])request.getParameterValues("finalprice");
int sum = 0;


String temp  = "101010110";
temp = priceCal(temp);
System.out.println(temp);%>
                <tr bgcolor="f3f3f3" height='40px'><td colspan='3' style="text-align: center; font-weight: bold;">온라인 광고 예상 견적</td></tr>
                <tr bgcolor="f3f3f3">
                    <td height="28" style="text-align:right; padding-right: 15px;"><strong>선택하신 상품</strong></td>
                    <td style="text-align:right; padding-right:15px;"><strong>가 격(원)</strong></td>
                </tr>
              
                	<%for(int i = 0 ; i<arr.length;i++){ %>
                <tr>
                <td style="text-align: right; padding-right: 15px"><%=arr[i]%>  </td>
                <td style="text-align: right; padding-right: 15px"><%=priceCal(arr2[i])+"원"%></td>
                </tr>
                <%sum += Integer.parseInt(arr2[i]);} %> 
                
                <tr bgcolor="f3f3f3">
                        <td height="28" colspan='1' style="text-align:right; padding-right:15px"><strong>예상 가격 </strong></td>
                        <td style=" text-align:right; padding-right:15px"><%=priceCal(Integer.toString(sum)) %>원</td>
                </tr>
                
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