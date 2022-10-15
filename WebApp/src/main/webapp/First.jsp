<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{padding:0px;
	 margin:0px;
	 background: lightgreen;
	 }
	 .d1
	 {text-align:center;
	  color:black;
	  padding:300px;
	 }
	 table,tr,td
	 {border:2px solid grey;
	 }
	 table.center
	 {
     margin-left: auto; 
     margin-right: auto;
     }
     td{
     padding:15px;
     margin:0px;
     }
     button{   
     width:100%;
     }
	 input{width:100%;}	
</style>
</head>
<body>
		<div class="d1">
		<h1>Calculator</h1>
		<form action="First.jsp" method="POST">
		<table class="center">
		<tr>
		<td>number1</td>
		<td><input type="text" name="n1" id="n1"></td>
		</tr>
		<tr>
		<td>number2</td>
		<td><input type="text" name="n2" id="n2"></td>
		</tr>

		<tr>
		<td colspan="2"><p>1 for +, 2 for -, 3 for X, 4 for %</p></td>
		</tr>
		<tr>
		<td colspan="2"><input type="text" name="res" id="res"></td>
		</tr>
		<tr>
		<td colspan="2"><input type="Submit">
		</tr>
		</table>
		</form>
		<h2><%
		int n1=Integer.parseInt(request.getParameter("n1"));
		int n2=Integer.parseInt(request.getParameter("n2"));
		int res=Integer.parseInt(request.getParameter("res"));
		int result;
		switch(res){
		case 1:  result=n1+n2;
			out.println(String.valueOf(result));
			break;
		case 2: result=n1-n2;
				out.println(String.valueOf(result));
				break;
		case 3:  result=n1*n2;
				out.println(String.valueOf(result));
				break;
		case 4:  result=n1/n2;
				out.println(String.valueOf(result));
				break;
		default: out.println("Error");
		}
		%></h2>
		</div>
</body>
</html>