<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int n1 = Integer.parseInt(request.getParameter("n1"));
	int n2 = Integer.parseInt(request.getParameter("n2"));
	
	long result = 0;
	
	switch(request.getParameter("op")) {
	case "+" : result = n1 + n2; break;
	case "-" : result = n1 - n2; break;
	case "*" : result = n1 * n2; break;
	case "/" : result = n1 / n2; break;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��� ���-JSP</h2>
	<hr>
	<%=result %>
</body>
</html>