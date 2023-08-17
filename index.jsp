<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form method="post" action="insert.jsp" >
 <h3 align="center" id="error" style= "color:red"> </h3> 
    <table border="2px" align="center">
        <tr>
            <th colspan="2" align="center">Registration Form</th>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" id="name" required></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="email" name="email" id="email" ></td>
        </tr>
        <tr>
            <td>Mobile</td>
            <td><input type="tel" name="mobile" id="mobile" pattern="[0-9]{10}" ></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                MALE <input type="radio" name="gender" id="gender" value="male">
                FEMALE <input type="radio" name="gender" id="gender" value="female">
            </td>
        </tr>
        <tr>
            <td>Counrty</td>
            <td><select name="country" id="country">
            <option value="" disabled selected>Country</option>
                <option value="india">india</option>
                <option value="us">us</option>
                <option value="japan">japan</option>
            </select></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" name="submit" value="submit" onclick="return formvalidate()"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><a href="view.jsp">view</a></td>
        </tr>
    </table>
    </form>
    <script>
    function formvalidate(){
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const mobile = document.getElementById('mobile').value;
    const gender = document.getElementById('gender').checked;
    const country = document.getElementById('country').value;
    const error = document.getElementById("error");
    if(name == ""){
    	//alert("Please Enter Your Name::");
    	error.innerHTML = "Please Enter Name";
    	return false;
    }
    else if (email == ""){
    	error.innerHTML = "Please Enter  Email";
    	//alert("Please Enter Email::");
    	return false;
    }
    else if (mobile == ""){
    	error.innerHTML = "Please Enter Mobile Number";
    	//alert("Please Enter Mobile::");
    	return false;
    }
    else if (!gender == true){
    	error.innerHTML = "Please Select Gender";
    	//alert("Please Select Gender::");
    	return false;
    }
    else if (country == ""){
    	error.innerHTML = "Please Select Country";
    	//alert("Please Select Country::");
    	return false;
    }
    else{
    	error.innerHTML = "";
    	return true;
    }
    }
    </script>
</body>
</html>