<html>
<head>

<title>Update Student</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/add-student-style.css">

</head>


<body>
<div id="wrapper">
	<div id="header">
		<h2>FooBar University</h2>
	</div>
</div>

	<div id="container">
	 	<h3>Update Student</h3>
	 	<form action="StudentControllerServlet" method="GET">
	 	 <input type="hidden" name="command" value="UPDATE"/>
	 	 <input type="hidden" name="studentId" value="${THE_STUDENT.id}"/>
	 	 
	 	 	<table>
	 	 		<tbody>
	 	 			<tr>
	 	 				<td><label>fIRST NAME:</label></td>
	 	 				<td><input type="text" name="firstName" value="${the_student.firstName}" }/></td> 
	 	 			</tr>
	 	 			<tr>
	 	 				<td><label>LaST NAME:</label></td>
	 	 				<td><input type="text" name="lastName"  value="${the_student.lastName}" }/></td> 
	 	 			</tr>
	 	 			<tr>
	 	 				<td><label>EMAIL:</label></td>
	 	 				<td><input type="text" name="email"  value="${the_student.email}" }/></td> 
	 	 			</tr>
	 	 			<tr>
	 	 				<td><label></label></td>
	 	 				<td><input type="submit" value="Save" class="save"/></td> 
	 	 			</tr>
	 	 		</tbody>
	 	 	
	 	 	
	 	 	</table>
	 	
	 	</form>
	 	<div style="clear: both;"></div>
	 	<p>
	 		<a href="StudentControllerServlet">Back to List</a>
	 		</p>
	 	
	 	
	 	
	</div>


</body></html>