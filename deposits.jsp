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

		<table border="0" width="100%" cellspacing="0" cellpadding="0"
			background="img/linebkg.gif">
			<tr>

				<td width="100%"><font face="Arial" size="2" color="#FFFFFF"><h:form>
							<b>&nbsp;&nbsp; <h:commandButton action="clientPage"
									value="General" style="font-weight: bold" immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="accountDetails" value="Account Details"
									style="font-weight: bold" immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="viewClientDetails" value="View/Update PersonalDetails"
									style="font-weight: bold" immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp;<h:commandButton action="deposits"
									value="Deposits" style="font-weight: bold" immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="withdrawDeposit" value="Withdraw/Deposit"
									style="font-weight: bold" immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="#{clientBean.loadClientActivitiesList }"
									value="View Activities" style="font-weight: bold"
									immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="MBankProperties" value="MBank Properties"
									style="font-weight: bold" immediate="true">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="#{clientBean.logout}" value="Logout"
									style="font-weight: bold" immediate="true">

								</h:commandButton>
							</b></font> </h:form></td>

			</tr>
		</table>
		<p style="margin-left: 20">
			<font size="5" color="#B09000"><h:outputLabel
					value="Create new deposit:"></h:outputLabel></font>
		</p>
		<p style="margin-left: 20">
			
			<h:form id="form">
			
			<font color="#FFFFFF">Amount of money to deposit: </font>
				<h:inputText id="depositAmount" value="#{clientBean.pakamSum}"
					validatorMessage="Please Enter A Number Between 100 - 10,000,000"
					requiredMessage="2"
					converterMessage="Please Enter A Valid Amount To Deposit">
					<f:validateDoubleRange minimum="100" maximum="10000000"></f:validateDoubleRange>
				</h:inputText>
				<h:message for="depositAmount" style="color: #FF0000"></h:message>

				<br>
				<p style="margin-left: 20"></p>
				<p style="margin-left: 20">
					<font color="#FFFFFF">Deposit length (in months): </font>
					<h:inputText id="depositDuration"
						value="#{clientBean.depositmonths}"
						validatorMessage="Please Enter A Number Between 1 - 40 (Months)"
						requiredMessage="2"
						converterMessage="Please Enter A Valid Duration For Deposit">
						<f:validateLongRange minimum="1" maximum="40"></f:validateLongRange>
					</h:inputText>
					<h:message for="depositDuration" style="color: #FF0000"></h:message>
					<br> <br>
					<h:commandButton id="createDeposit" value="Create deposit"
						action="#{clientBean.addNewDeposit}"></h:commandButton>
			</h:form>
			<br>
		</p>

		<p style="margin-left: 20">
			<font size="5" color="#B09000"><h:outputLabel
					value="Deposit summery:"></h:outputLabel></font><br> <br>
		</p>
		<font size="3" color="#B09000"> <h:dataTable border="1"
				value="#{clientBean.clientDepositList }" var="item"
				style="text-align: center">
				<h:column id="column1">
					<f:facet name="header">
						<h:outputText value="Deposit ID"></h:outputText>
					</f:facet>
					<h:outputText value="#{item.deposit_id }"></h:outputText>
				</h:column>
				<h:column id="column2">
					<f:facet name="header">
						<h:outputText value="Balance"></h:outputText>
					</f:facet>
					<h:outputText value="#{item.balance }"></h:outputText>
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Deposit Type"></h:outputText>
					</f:facet>
					<h:outputText value="#{item.type }"></h:outputText>
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Estimated Balance"></h:outputText>
					</f:facet>
					<h:outputText value="#{item.estimated_balance }"></h:outputText>
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Opening Date"></h:outputText>
					</f:facet>
					<h:outputText value="#{item.opening_date }"></h:outputText>
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Closing Date"></h:outputText>
					</f:facet>
					<h:outputText value="#{item.closing_date }"></h:outputText>
				</h:column>
			</h:dataTable>
		</font>
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp; </font>
		</p>
		<br>
		<p style="margin-left: 20">
			<font size="5" color="#B09000"><h:outputLabel
					value="Pre Open Deposit:"></h:outputLabel><br> <br> <h:outputText
					value="Select deposit ID to pre open: "></h:outputText> </font>
			<h:form id="form2">
				<h:inputText id="preOpen" value="#{clientBean.depositId}"
					validatorMessage="Please Enter A Valid Deposit Id"
					converterMessage="2" requiredMessage="3">
					<f:validateLongRange minimum="1" maximum="10000"></f:validateLongRange>
				</h:inputText>
				<h:message for="preOpen" style="color: #FF0000"></h:message>
				<br>
				<h:commandButton value="Pre open selected deposit"
					action="#{clientBean.preOpenDeposit }"></h:commandButton>
			</h:form>
		</p>
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp;</font>
		</p>

		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp;</font>
		</p>

		
	</f:view>
	<table border="0" width="100%" cellspacing="0" cellpadding="0"
		background="img/botbkg.gif">

	</table>

</body>

</html>