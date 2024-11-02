<jsp:include page="doner_home.html" />
<br>
<br>
<br>
<html>
<head>
    <title>Login Form</title>
    <style>
	form{
		width:400px;
		height:400px;
		border:1px solid;
		margin:0 auto;
	}
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: inline-block;
            width: 150px; /* Adjust as needed */
            text-align: right;
            margin-right: 10px;
			padding-bottom:25px;
        }
        .form-group input {
            width: 200px; /* Adjust as needed */
        }
        .form-group input[type="submit"] {
            width: auto;
			height:30px;
			color:white;
			background-color:red;
            margin-left: 110px; /* Width of label + margin-right of label */
        }
		h2{
			color:white;
			background-color:black;
			text-align:center;
			}
			p
			{
			text-align:center;
			color:green;
			}
    </style>
</head>
<body>
    <form action="blood_donate_reg.jsp" method="post">
	<h2>DONATE BLOOD</h2>
        <div class="form-group">
            <label>Blood Group:</label>
            <select name="options">
			<option name="choose">Choose Blood Group</option>
			<option name="A+VE">A+VE</option>
			<option name="A-VE">A-VE</option>   
			<option name="B+VE">B+VE</option>   
			<option name="B-VE">B-VE</option>   
			<option name="O+VE">O+VE</option>   
			<option name="O-VE">O-VE</option>
			<option name="AB+VE">AB+VE</option>
			<option name="AB-VE">AB-VE</option>
			</select>
		</div>
        <div class="form-group">
            <label>Unit(in ml):</label>
            <input type="number"  name="unit">
        </div>
        <div class="form-group">
			<label>Disease(if any):</label>
            <input type="text" name="dis"/>
        </div>
		<div class="form-group">
			<label>Age:</label>
            <input type="number" name="age"/>
        </div>
		<div class="form-group">
            <input type="submit" value="DONATE">
        </div>
    </form>
	<p>Copy  Rights  @ D.Lavanya Sri, 22761A0579.</p>
</body>
</html>