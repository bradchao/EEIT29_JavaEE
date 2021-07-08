<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>Brad Big Company</h1>
<hr />

	<table border="1" width="100%">
		<%
			String format = "%d x %d = %d<br/>";
			int result =0;

			for (int k=0; k<2; k++){
				out.println("<tr>");
				for (int j=2; j<=5; j++){
					out.println("<td>");
					for (int i = 1; i<=9; i++){
						int newj = j + k*4;
						result = newj * i ;
						out.println(String.format(format, newj, i, result));
					}
					out.println("</td>");
				}
				out.println("</tr>");
			}
		%>
	</table>

<hr />

</body>
</html>