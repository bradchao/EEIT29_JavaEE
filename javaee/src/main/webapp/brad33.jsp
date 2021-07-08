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
		<tr>
			<%
				String format = "%d x %d = %d<br/>";
				int result =0;
				for (int j=2; j<=5; j++){
					out.println("<td>");
					for (int i = 1; i<=9; i++){
						result = j * i;
						out.println(String.format(format, j, i, result));
					}
					out.println("</td>");
				}
			%>
		</tr>
		<tr>
			<td>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
			</td>
			<td>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
			
			</td>
			<td>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
			</td>
			<td>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
				2 x 1 = 2<br/>
			
			</td>
		</tr>
	</table>

<hr />

</body>
</html>