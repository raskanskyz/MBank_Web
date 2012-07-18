<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>MBank Online Banking</title>
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
		<h:form>
			<table border="0" width="100%" cellspacing="0" cellpadding="0"
				background="img/linebkg.gif">
				<tr>
					<td width="100%"><font face="Arial" size="2" color="#FFFFFF"><b>&nbsp;&nbsp;
								<h:commandButton action="clientPage" value="General"
									style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="accountDetails" value="Account Details"
									style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="viewClientDetails" value="View/Update PersonalDetails"
									style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp;<h:commandButton action="deposits"
									value="Deposits" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="withdrawDeposit" value="Withdraw/Deposit"
									style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton action="activities"
									value="View Activities" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="MBankProperties" value="MBank Properties"
									style="font-weight: bold">
								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="#{clientBean.logout}" value="Logout"
									style="font-weight: bold">

								</h:commandButton>
						</b></font></td>
				</tr>
			</table>
			<p style="margin-left: 20">
				<font size="5" color="#B09000"><h:outputLabel
						value="View your details"></h:outputLabel></font>
			</p>
			<p style="margin-left: 20">
				<font color="#FFFFFF">Address: <h:outputText
						value="#{clientBean.cdto.address}"></h:outputText></font>
			</p>
			<p style="margin-left: 20">
				<font color="#FFFFFF">Email: <h:outputText
						value="#{clientBean.cdto.email}"></h:outputText></font>
			</p>
			<p style="margin-left: 20">
				<font color="#FFFFFF">Phone number: <h:outputText
						value="#{clientBean.cdto.phone}"></h:outputText></font><br>
			<p style="margin-left: 20">
				<font size="5" color="#B09000"><h:outputLabel
						value="Update your details"></h:outputLabel></font>
			</p>

			<p style="margin-left: 20">
				<font color="#FFFFFF">Insert new address: <h:inputText
						id="address" value="#{clientBean.cdto.address}" required="true"
						requiredMessage="This Field Cannot Be Empty">
						<f:validateLength minimum="1" maximum="50"></f:validateLength>
					</h:inputText> <h:message style="color: #FF0000" for="address"></h:message></font><br>
				<br> <font color="#FFFFFF">Insert new email: <h:inputText
						id="email" value="#{clientBean.cdto.email}" required="true"
						requiredMessage="This Field Cannot Be Empty">
						<f:validateLength minimum="1" maximum="50"></f:validateLength>
					</h:inputText> <h:message style="color: #FF0000" for="email"></h:message></font><br>
				<br> <font color="#FFFFFF">Insert new phone number: <h:inputText
						id="phoneNumber" value="#{clientBean.cdto.phone}" required="true"
						validatorMessage="This Field Must Consist Of Digits Only (10)"
						requiredMessage="This Field Cannot Be Empty">

						<f:validateLongRange minimum="0" maximum="9999999999"></f:validateLongRange>
						<f:validateLength minimum="10" maximum="10"></f:validateLength>
					</h:inputText> <h:message style="color: #FF0000" for="phoneNumber"></h:message></font><br>
				<br>
				<h:commandButton value="Update details"
					action="#{clientBean.updateCdtoDetails}"></h:commandButton>
			</p>



			<p style="margin-left: 20">
				<font color="#FFFFFF">&nbsp;</font>
			</p>
			<p style="margin-left: 20">
				<font color="#FFFFFF">&nbsp;</font>
			</p>
			<p style="margin-left: 20"></p>

			<p style="margin-left: 20">
				<font color="#FFFFFF">&nbsp; </font>
			</p>
			<p style="margin-left: 20">
				<font color="#FFFFFF">&nbsp;</font>
			</p>

		</h:form>
	</f:view>
	<table border="0" width="100%" cellspacing="0" cellpadding="0"
		background="img/botbkg.gif">

	</table>

</body>

</html>