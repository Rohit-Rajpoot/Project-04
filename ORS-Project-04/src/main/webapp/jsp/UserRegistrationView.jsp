<%@page import="in.co.rays.ctl.UserRegistrationCtl"%>
<%@page import="java.util.HashMap"%>
<%@page import="in.co.rays.util.HTMLUtility"%>
<%@page import="in.co.rays.util.ServletUtility"%>
<%@page import="in.co.rays.util.DataUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="Header.jsp"%>
	<form action="<%=ORSView.USER_REGISTRATION_CTL%>" method="post">
		<jsp:useBean id="bean" class="in.co.rays.bean.UserBean"
			scope="request" />

		<div align="center">
			<h1>
				<font>User Registration</font>
			</h1>
			
			<h3>
				<font color="green"><%=ServletUtility.getSuccessMessage(request)%></font>
			</h3>
			
			<h3>
				<font color="red"><%=ServletUtility.getErrorMessage(request)%></font>
			</h3>

			<!-- Hidden Fields -->
			<input type="hidden" name="id" value="" /> 
			<input type="hidden" name="createdBy" value="" /> 
			<input type="hidden" name="modifiedBy" value="" /> 
			<input type="hidden" name="createdDatetime" value="" />
			<input type="hidden" name="modifiedDatetime" value="" />

			<table>
				<tr>
					<th align="left">First Name<span style="color: red">*</span></th>
					<td><input type="text" name="firstName"
						placeholder="Enter First Name" value="" /></td>
				</tr>
				<tr>
					<th align="left">Last Name<span style="color: red">*</span></th>
					<td><input type="text" name="lastName"
						placeholder="Enter Last Name" value="" /></td>
				</tr>
				<tr>
					<th align="left">Login Id<span style="color: red">*</span></th>
					<td><input type="text" name="login"
						placeholder="Enter Email ID" value="" /></td>
				</tr>
				<tr>
					<th align="left">Password<span style="color: red">*</span></th>
					<td><input type="password" name="password"
						placeholder="Enter Password" value="" /></td>
				</tr>
				<tr>
					<th align="left">Confirm Password<span style="color: red">*</span></th>
					<td><input type="password" name="confirmPassword"
						placeholder="Confirm Password" value="" /></td>
				</tr>
				<tr>
					<th align="left">DOB<span style="color: red">*</span></th>
					<td><input type="date" name="dob"
						placeholder="Select Date of Birth" value="" /></td>
				</tr>
				<tr>
					<th align="left">Gender<span style="color: red">*</span></th>
					<td>
						<%
							HashMap<String, String> genderMap = new HashMap<>();
							genderMap.put("male", "Male");
							genderMap.put("female", "Female");
						%> <%=HTMLUtility.getList("gender", bean.getGender(), genderMap)%>
					</td>
				</tr>
				<tr>
					<th align="left">Mobile No<span style="color: red">*</span></th>
					<td><input type="text" name="mobileNo"
						placeholder="Enter Mobile No."
						value="<%=DataUtility.getStringData(bean.getMobileNo())%>" /></td>
					<td style="position: fixed;"><font color="red"><%=ServletUtility.getErrorMessage("mobileNo", request)%></font></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="3"><input type="submit" name="operation"
						value="<%=UserRegistrationCtl.OP_SIGN_UP%>" /> <input
						type="submit" name="operation"
						value="<%=UserRegistrationCtl.OP_RESET%>" /></td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>