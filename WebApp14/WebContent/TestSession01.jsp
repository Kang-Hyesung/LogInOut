<%@ page contentType="text/html; charset=UTF-8"%>

<%
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestSession01.jsp</title>

<style type="text/css">

div{
    width: 30%;
    margin: 0 auto; /* 수평 중앙 정렬 */
    
    background-color: #F5F5F5;
    padding: 20px;
    padding-left: -50px;
    padding-right: -50px;
    border: 1px solid #CCCCCC;
    text-align: center;
}

span{
	font-weight: bold;
}
.abce{
	margin-top: 150px;
}
</style>

<script type="text/javascript">
	
	function sendIt()
	{
		/* var f = document.myForm;
		
		var name = document.getElementById("name");
		var tel = document.getElementById("tel");
		
		if(name.value == "")
		{
			alert("이름을 입력하세요");
			name.focus();
			return;
		}
		
		
		if(tel.value == "")
		{
			alert("전화번호를 입력하세요");
			tel.focus();
			return;
		}
		
		
		f.submit(); */
		
		var f = document.forms[0];
		
		if(!f.name.value)
		{
			alert("이름을 입력하세요");
			f.name.focus();
			return;
		}
		
		if(!f.tel.value)
		{
			alert("전화번호를 입력하세요");
			f.tel.focus();
			return;
		}
		
		f.submit();
	}
	
</script>

<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<!-- 
	○ TestSession01.jsp 에서 TestSession02.jsp 페이지로
	   이름과 전화번호를 입력받아 전송
	   
	   TestSession02.jsp 에서 TestSession03.jsp 페이지로
	   아이디와 패스워드를 입력받고
	   앞에서 전달받은 이름과 전화번호를 함께 전송
	   
	   TestSession03.jsp 에서 전달받은 이름, 전화번호, 아이디, 패스워드 출력
	   
	   01 →→→→→→→→ 02 →→→→→→→→→ 03
	   이름, 전화		   아이디, 패스워드		 이름, 전화, 아이디, 패스워드
	   입력				   입력					 출력
	   
	   				  - getParameter			- getAttribute
	   
	※ 즉, 01 에서 02 로 넘겨받을 땐 getParameter
	   02 에서 03 으로 넘겨받을 땐 getParameter 와 getAttribute 로 세션 활용
	   01 에서 03 으로 직접 넘겨줄 수 없기 때문에 세션(session)에 저장
	   
	※ session 외에 input 태그 hidden 속성을 이용한 정보 전달 기능
 -->

<form action="TestSession02.jsp" method="post" name="myForm">
	<div>이름<input type="text" id="name" name="name"></div>
	<div>전화번호<input type="text" id="tel" name="tel"></div>
	<div>
		<input type="button" value="입력" onclick="sendIt()">
		<input type="reset">
	</div>
</form>

</body>
</html>


























