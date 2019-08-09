<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h1>
	<form name="mf" action="mail" method="post" onsubmit="fun()">
		Email: <input type="text" name="email" id="email" onkeyup="valid()"
			value=""><span id="msg"></span><br>
			 <input type="submit" value="SUBMIT"><span id="msg1"></span>
	</form>
</h1>
	<script>
		
		function valid() {
			console.log("hi");
			if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
					.test(mf.email.value)) {
				document.getElementById("msg").innerText = "";
			} else {
				//	alert("You have entered an invalid email address!")
				//document.write("<br>You have entered an invalid email address!");
				document.getElementById("msg").innerText = "Invalid email address";

			}

		}
		function fun(){
			console.log("fun");
			document.getElementById("msg1").innerText="      Sending...."; 	
		}
		
	</script>
</body>
</html>