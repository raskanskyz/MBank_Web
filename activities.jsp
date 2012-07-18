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
				background="img/linebkg.gif" >
				<tr>
					<td width="100%" ><font face="Arial" size="2" color="#FFFFFF" ><b>&nbsp;&nbsp;
								<h:commandButton action="clientPage" value="General" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="accountDetails" value="Account Details" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="viewClientDetails" value="View/Update PersonalDetails" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp;<h:commandButton action="deposits"
									value="Deposits" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="withdrawDeposit" value="Withdraw/Deposit" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton action="activities"
									value="View Activities" style="font-weight: bold">

								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="MBankProperties" value="MBank Properties" style="font-weight: bold">
								</h:commandButton>&nbsp;&nbsp; |&nbsp;&nbsp; <h:commandButton
									action="#{clientBean.logout}" value="Logout"
									style="font-weight: bold">

								</h:commandButton>
						</b></font></td>
				</tr>
			</table>
		<p style="margin-left: 20">
			<font size="5" color="#B09000"><h:outputLabel
					value="Recent Activities Are Listed Below"></h:outputLabel></font>
		</p>
		
		<p style="margin-left: 20">
			<font size="3" color="#B09000"><h:dataTable border="1" value="#{clientBean.clientActivityList}" var="item" style="text-align: center"> 
					<h:column id="column1">
						<f:facet name="header">
							<h:outputText value="Activity Id"></h:outputText>
						</f:facet>
							<h:outputText value="#{item.id }"></h:outputText>
						</h:column>
					
						<h:column id="column3">
						<f:facet name="header">
							<h:outputText value="Amount"></h:outputText>
						</f:facet>
						<h:outputText value="#{item.amount }"></h:outputText>
					</h:column>
					<h:column id="column4">
						<f:facet name="header">
							<h:outputText value="Activity Date"></h:outputText>
						</f:facet>
						<h:outputText value="#{item.activity_date }"></h:outputText>
					</h:column>
						<h:column id="column5">
						<f:facet name="header">
							<h:outputText value="Commission"></h:outputText>
						</f:facet>
						<h:outputText value="#{item.commission }"></h:outputText>
					</h:column>
					<h:column id="column6">
						<f:facet name="header">
							<h:outputText value="Description"></h:outputText>
						</f:facet>
						<h:outputText value="#{item.description }"></h:outputText>
					</h:column>
				</h:dataTable>
				</font>
			
		<p style="margin-left: 20">
			<font color="#FFFFFF">&nbsp;</font>
		</p>
		
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