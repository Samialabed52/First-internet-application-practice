<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>String Output</title>
</head>
<body>
	<%
		String revString = request.getParameter("revString");
	%>
	Your entry reversed: <%=revString%>
</body>
</html>

