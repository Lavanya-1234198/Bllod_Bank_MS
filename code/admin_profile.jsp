<%@ page session="true" %>
<jsp:include page="Admin_home.html" />
<br>
<br>

<br>
<%
	String uname = (String)session.getAttribute("user");
	if(uname != null)
	{
		out.print("welcome" + uname +"! This is Your Profile.");
	}
	else
	{	
		out.print("please login first");
%>
		<jsp:forward page="admin_login.html" />
<%
	}
%>
<p>Copy  Rights  @ D.Lavanya Sri, 22761A0579.</p>
<style>
p{
text-align:center;
color:green;
}
</style>