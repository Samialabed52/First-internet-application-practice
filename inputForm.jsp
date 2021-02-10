<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert String</title>
</head>
<body>
	<form action="inputForm.jsp">
	<table Style ="border-collapse: separate; border-spacing: 4px;">
		<tr>
			<td>Enter any collection of words or letters:</td>
			<td><input name="string" type="text" size="20" id="string"></td>
			<td></td>
		</tr>	
		<tr>
			<td><input type="submit" value="Enter"></td>
		</tr>
		<%
			String string = request.getParameter("string");
			if(string != null){
				StringBuilder string1 = new StringBuilder();
				string1.append(string);
				string1.reverse();
				System.out.println(string1);
				request.setAttribute("revString", string1);
			}
		%>
	</table>
	</form>
	<jsp:include page="outputForm.jsp">
			<jsp:param name="revString" value="${revString}" />
	</jsp:include>
</body>
</html>

