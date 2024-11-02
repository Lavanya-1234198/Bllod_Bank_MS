<%@ page import="java.sql.*" %>

<%
	
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String uname=request.getParameter("uname");
	String pwd=request.getParameter("pwd");
	int age=Integer.parseInt(request.getParameter("age"));
	String gen=request.getParameter("gender");
	long phno=Long.parseLong(request.getParameter("phno"));
	String adder=request.getParameter("adder");
	String state=request.getParameter("state");
	String group=request.getParameter("group");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","lavanya");

		String qry = "insert into Doner_reg values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=con.prepareStatement(qry);
		pst.setString(1,name);
		pst.setString(2,email);
		pst.setString(3,uname);
		pst.setString(4,pwd);
		pst.setInt(5,age);
		pst.setString(6,gen);
		pst.setLong(7,phno);
		pst.setString(8,adder);
		pst.setString(9,state);
		pst.setString(10,group);
		pst.executeUpdate();
		out.print("You are successfully Registerd");
		out.print("<br>");
		out.print("<a href='doner_login.html'>LOGIN</a>");
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










