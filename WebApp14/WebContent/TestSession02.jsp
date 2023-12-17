<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 이전 페이지(TestSession01.jsp)로부터 넘어온 데이터 수신
	// name, tel

	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	
	// check
	session.setAttribute("name", name);
	session.setAttribute("tel", tel);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript">
	
	function sendIt()
	{
		/* var f = document.myForm;
		
		f.submit(); */
		
		var f = document.forms[0];
		
		if(!f.id.value)
		{
			alert("아이디를 입력하세요");
			f.id.focus();
			return;
		}
		
		if(!f.pwd.value)
		{
			alert("패스워드를 입력하세요")
			f.pwd.focus();
			return;
		}
		
		f.submit();
	}
	
</script>

</head>
<body>

<form action="TestSession03.jsp" method="post" name="myForm">
	<div>아이디<input type="text" id="id" name="id"></div>
	<div>패스워드<input type="text" id="pwd" name="pwd"></div>
	<div>
		<input type="button" value="입력" onclick="sendIt()">
		<input type="reset">
	</div>
</form>

<%=name + tel %>

</body>
</html>