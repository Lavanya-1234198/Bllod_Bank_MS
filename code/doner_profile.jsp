<%@ page import="java.sql.*"%>
<jsp:include page="doner_home.html" />
<br>
<br>
<br>

<%
String uname = (String)session.getAttribute("user");
if(uname != null) {
    out.print("<br><br><br><br><br><div style='text-align:center;'>This is your PROFILE<br><br>Your are Mr/Ms. " + uname + "</div>");

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "lavanya");
        String query = "SELECT * FROM Doner_reg WHERE UNAME = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, uname);
        ResultSet rs = pstmt.executeQuery();

        if (rs.next()) {
            String name = rs.getString("NAME");
            String email = rs.getString("EMAIL");
            String pwd = rs.getString("PWD");
            int age = rs.getInt("AGE");
            String gen = rs.getString("GENDER");
            long phno = rs.getLong("PHNO");
            String adder = rs.getString("ADDRESS");
            String state = rs.getString("STATE");
            String group = rs.getString("B_GROUP");
%>

<style>
    table.styled-table {
        width: 40%;
        margin: 0 auto; /* Center the table */
        border-collapse: collapse;
        background-color: Lavender;
    }
    table.styled-table th, table.styled-table td {
        border: 1px solid #ddd;
        padding: 8px;
    }
    table.styled-table th {
        background-color: #4CAF50; /* Header background color */
        color: white;
    }
    p {
        text-align: center;
        color: green;
    }
</style>

<table class="styled-table" border="1" cellspacing="0">
    <tr>
        <th>NAME</th>
        <td><%= name %></td>
    </tr>
    <tr>
        <th>EMAIL</th>
        <td><%= email %></td>
    </tr>
    <tr>
        <th>UNAME</th>
        <td><%= uname %></td>
    </tr>
    <tr>
        <th>PWD</th>
        <td><%= pwd %></td>
    </tr>
    <tr>
        <th>AGE</th>
        <td><%= age %></td>
    </tr>
    <tr>
        <th>GENDER</th>
        <td><%= gen %></td>
    </tr>
    <tr>
        <th>PHNO</th>
        <td><%= phno %></td>
    </tr>
    <tr>
        <th>ADDRESS</th>
        <td><%= adder %></td>
    </tr>
    <tr>
        <th>STATE</th>
        <td><%= state %></td>
    </tr>
    <tr>
        <th>B_GROUP</th>
        <td><%= group %></td>
    </tr>
</table>

<%
        } else {
            out.println("Please login first");
        %>
<jsp:include page="Doner_login.html" />
<%
        }
    } catch(Exception e) {
        out.print(e);
    }
}
%>

<p>Copy Rights @ D.Lavanya Sri, 22761A0579.</p>
