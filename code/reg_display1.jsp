<%@ page import="java.sql.*" %>
<jsp:include page="Admin_home.html" />
<br>
<br>
<br>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Home</title>
    <style>
        .table-container {
			display: flex;
			justify-content: center;
        }

        table {
            border:1px solid;
            width: 400px; /* Adjust table width as needed */
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: Lavender;
        }
		h2{
		text-align:center;
		}
		p{
text-align:center;
color:green;
}

    </style>
</head>
<body>
	<h2>The Registered Detaills</h2>
    <div class="table-container">
		<br>
        <table>
            <tr>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>UNAME</th>
                <th>PWD</th>
                <th>AGE</th>
                <th>GENDER</th>
                <th>PHNO</th>
                <th>ADDRESS</th>
                <th>STATE</th>
                <th>B_GROUP</th>
            </tr>
            <% 
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "lavanya");

                Statement stmt=con.createStatement();
		String qry="select * from Doner_reg";
		ResultSet rs=stmt.executeQuery(qry);


                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getInt(5) %></td>
                <td><%= rs.getString(6) %></td>
                <td><%= rs.getLong(7) %></td>
                <td><%= rs.getString(8) %></td>
                <td><%= rs.getString(9) %></td>
                <td><%= rs.getString(10) %></td>
            </tr>
            <% 
                }
                rs.close();
                stmt.close();
                con.close();
            } catch (Exception e) {
                out.print(e);
            }
            %>
        </table>
    </div>
	<p>Copy  Rights  @ D.Lavanya Sri, 22761A0579.</p>


</body>
</html>