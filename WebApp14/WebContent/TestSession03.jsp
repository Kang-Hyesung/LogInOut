<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 이전 페이지(TestSession02.jsp) 로부터 넘어온 데이터 수신
	// id, pwd
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	// String name = request.getParameter("name");
	// String tel = request.getParameter("tel");
	
	String name = (String)session.getAttribute("name");
	String tel = (String)session.getAttribute("tel");
	
	
	// 세션에서 꺼내왔으니 제거하는 메소드
	session.removeAttribute("name");
	session.removeAttribute("tel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<h2>이름, 전화번호, 아이디, 패스워드 출력</h2>
	<h2>(TestSession03.jsp)</h2>
	<hr>
</div>

<div>
	<h4>이름 : <%=name %></h4>
	<h4>전화번호 : <%=tel %></h4>
	<h4>아이디 : <%=id %></h4>
	<h4>패스워드 : <%=pwd %></h4>
</div>
 
</body>
</html>






















