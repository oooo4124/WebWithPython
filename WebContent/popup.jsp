<%@page import="java.util.Calendar"%>
<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


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
    <td height="28" align="center" bgcolor="#F5F5F5" class="style9 box_b1 box_b2" style="padding-left:15px">견 적 서</td>
  </tr>

</table>
<br>
<%Calendar cal = Calendar.getInstance(); 
userVO vo = (userVO)session.getAttribute("vo");

request.setCharacterEncoding("utf-8");%>
	<table width='100%' border="0" cellpadding="0" cellspacing="0">
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

<span class="bold">견적</span> <span class="font2"> </span><br>
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
                <tr bgcolor="f3f3f3">
     				<td height="28" style="padding-left:15px"><strong>선택하신 상품</strong></td>
                    <td height="28" style="padding-left:15px"><strong></strong></td>
                    <td align="center"><strong>가 격(원)</strong></td>
                </tr>
				<%for(int i = 0 ; i<arr.length;i++){ %>
                
                <tr>
                    <td height="28" style="padding-left:15px"><%=arr[i]%></td>
                    <td align="right" colspan='2' style="padding-left:15px">
                    
                        <span style="padding-right:15px"><%=priceCal(arr2[i])%></span>
                    </td>
                </tr>
                
                <%sum += Integer.parseInt(arr2[i]);} %>
                
                
                <tr bgcolor="f3f3f3">
                        <td height="28" colspan='2' style="padding-left:15px"><strong class="bold">총 예상 가격 </strong></td>
                        <td align="right" colspan='2' style="padding-left:15px">
                            <span class="bold" style="padding-right:15px" ><%=priceCal(Integer.toString(sum))%></span>
                        </td>
                </tr>
</table>
<br>

</table>
<br>
<table width="600" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="70" align="center"><input name="button2" type="button" class="btn" onclick="javascript:window.print();" style="width:110px;height:30px;margin:5px;" value="견적서 출력" />
    <input name="button22" type="button" class="btn" onclick="javascript:self.close();" style="width:110px;height:30px;margin:5px;" value="닫 기" /></td>
  </tr>
</table>
</body>
</html>