<%@ page import="java.sql.*" %>
<jsp:forward page="doner_home.html" />

<%
	String un=request.getParameter("username");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","lavanya");
		String qry="select * from Doner_reg  where uname=?";
		PreparedStatement pstmt=con.prepareStatement(qry);
		pstmt.setString(1,un);
		pstmt.setString(2,pwd);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next())
		{
			session.setAttribute("user",un);
			out.println("<br><br><br>Welcome:" + un);
		}
		else{
			out.println("invalid user name & password");
%>
<jsp:include page="doner_login.html" />
<%
}

		}
	
	catch(Exception e)
	{
		out.print(e);
	}
%>
<p>Copy  Rights  @ D.Lavanya Sri, 22761A0579.</p>
<style>
p{
text-align:center;
color:green;
}
</style>