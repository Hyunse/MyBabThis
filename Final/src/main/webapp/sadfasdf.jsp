<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script>
var a=3.2;
function go(ing,end){
 document.all.div1.style.width = (ing+1)/end*a*20+"%";
 document.all.div2.innerHTML = ((ing+1)/end*a).toFixed(2)+"점";

  //ing+1 하는이유는 (ing+1)/end*100  =0 이되면 에러가 나기 때문
  //여기 뒤에 *숫자부분에 값들어감
}
</script>

</head>
<body>
<br>
<br>

<table width="363" border="0" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC" style="font-size:11px;">
  <tr >
    <td align="center" bgcolor="#EEEEEE" width="50">진행율 </td>
    <td bgcolor="#ffffff"><table id ="div1" width="247" height="52" bgcolor=orange>
    <img src="images/star.png" style="position: absolute">
    
    </table></td>
    <td id ="div2" align="center" bgcolor="#ffffff" width="50">0</td>
  </tr>
  
</table>
<%

int start = 0;
int end   = 100;
for( int i = start ; i < end ; i ++ ) {
 out.println("<script>go("+i+","+end+")</script>");


 //상태진행바의 진행 로직을 실행하는부분
 //출력속도
 Thread.sleep(7);
 //로직 끝

 out.flush() ;
}

%>

</body>
</html>