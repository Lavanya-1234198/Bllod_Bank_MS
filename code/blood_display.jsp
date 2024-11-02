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
            width: 500px; /* Adjust table width as needed */
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: Lavender;
        }
		h1{
		text-align:center;
		}
		
p{
text-align:center;
color:green;
}

    </style>
</head>
<body>
	<h1>The Blood Doner Details</h1> 
    <div class="table-container">
        <table>
            <tr>
                <th>B_GROUP</th>
                <th>UNIT_OF_BLOOD</th>
                <th>DISEASE</th>
                <th>AGE</th>
            </tr>
            <% 
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "lavanya");

                Statement stmt=con.createStatement();
		String qry="select * from Blood_Doners";
		ResultSet rs=stmt.executeQuery(qry);


                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getInt(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getInt(4) %></td>
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