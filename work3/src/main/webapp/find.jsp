<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  import="java.sql.*"%>
    <%
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
    	
    	Statement stmt = conn.createStatement();
    	
    	ResultSet rs = stmt.executeQuery("SELECT * FROM custom_01");

    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ�������ȸ</h1>
<hr>
<table border='1'>
	<thead>
		<tr>
			<th>ȸ�����̵�</th>
			<th>ȸ���̸�</th>
			<th>�̸���</th>
			<th>����ó</th>
		</tr>
	</thead>
	<tbody>
	<% while(rs.next()) { %>
		<tr>
			<td><%= rs.getString(1) %></td>
			<td><%= rs.getString(3) %></td>
			<td><%= rs.getString(4) %></td>
			<td><%= rs.getString(5) %></td>
		</tr>
		<% } %>
	</tbody>
</table>
<hr>
<h6>jffjsdfo&copy;</h6>

</body>
</html>