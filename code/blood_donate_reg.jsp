<%@ page import="java.sql.*" %>
<%
	String bgroup=request.getParameter("options");
	int unit=Integer.parseInt(request.getParameter("unit"));
	String dis=request.getParameter("dis");
	int age=Integer.parseInt(request.getParameter("age"));
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","lavanya");

		String qry = "insert into Blood_Doners values(?,?,?,?)";
		PreparedStatement pst=con.prepareStatement(qry);
		pst.setString(1,bgroup);
		pst.setInt(2,unit);
		pst.setString(3,dis);
		pst.setInt(4,age);
		pst.executeUpdate();
		con.close();
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
