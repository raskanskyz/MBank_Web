<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>MBank Online Banking Made Easy</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

</head>

<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0"
	marginheight="0" marginwidth="0" bgcolor="#000000"
	background="img/mainbkg.gif">


	<table border="0" width="100%" cellspacing="0" cellpadding="0"
		background="img/topbkg.gif">
		<tr>
			<td width="50%"><img border="0" src="img/topleft.gif"
				width="209" height="61"></td>
			<td width="50%">
				<p align="right">
					<!-- 	<img border="0" src="img/logo.gif" width="130" height="61">  -->
			</td>
		</tr>
	</table>
	<f:view>


		<p style="margin-left: 20">
			<font size="5" color="#B09000"><h:outputLabel
					value="Welcome To MBank Online System"></h:outputLabel></font>
		</p>
		<p style="margin-left: 20">
			<font size="4" color="#B09000"><h:outputLabel
					value="Please Login Below"></h:outputLabel></font>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF"> <h:form>
					<h:outputLabel value="Please Enter Your Id:"></h:outputLabel>
					<h:inputText id="clientId" value="#{clientBean.client_id}"
						required="true" validatorMessage="Invalid User Id"
						converterMessage="User Id Must Consist Of Numbers Only"
						requiredMessage="Username Cannot Be Empty">
						<f:validateLongRange minimum="1" maximum="99"></f:validateLongRange>
					</h:inputText>
					<h:message for="clientId" style="color: #FF0000"></h:message>


					<br>
					<h:outputLabel value="Please Enter Password:"></h:outputLabel>
					<h:inputSecret id="password" value="#{clientBean.password }" required="true" validatorMessage="1"
					converterMessage="2" requiredMessage="Password Cannot Be Empty"></h:inputSecret>
					<h:message for="password" style="color: #FF0000"></h:message>
					<br>
					<h:commandButton value="Login To MBank Account"
						action="#{clientBean.login}"></h:commandButton>





				</h:form></font>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp;</font>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp;</font>
		</p>
		<p style="margin-left: 20">
			<font size="5" color="#B09000"></font>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF"></font>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp; </font>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp;</font>
		</p>
		<p style="position: absolute; bottom: 0;">
	</f:view>

</body>

</html>