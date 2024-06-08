<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="in.beans.EmployeeBean, in.service.PaySlipGeneratorService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Generated PaySlip</title>
</head>
<body>

	<!-- create or locate javabean object -->
	<jsp:useBean id="empBean" class="in.beans.EmployeeBean" scope="request" />

	<!-- Write form data to java bean -->
	<jsp:setProperty property="eno" name="empBean" param="eId" />
	<jsp:setProperty property="ename" name="empBean" param="ename" />
	<jsp:setProperty property="eaddress" name="empBean" param="eaddress" />
	<jsp:setProperty property="basicSalary" name="empBean" param="bsalary" />

	<!-- Create/Locate service class object -->

	<jsp:useBean id="service" class="in.service.PaySlipGeneratorService"
		scope="application" />

	<!-- Invoke Business Method -->

	<%
	service.generatePaySlip(empBean);
	%>

<!-- Read the input and result from java bean class object and display on the browser -->

<h1 style="color:red; text-align: center;">Employee PaySlip Report</h1>

<table border="1" align="center">
  <tr>
    <td>Employee ID : </td>
    <td><jsp:getProperty property="eno" name="empBean"/>
  </tr>
  
  <tr>
    <td>Employee Name : </td>
    <td><jsp:getProperty property="ename" name="empBean"/>
  </tr>
  
  <tr>
    <td>Employee Address : </td>
    <td><jsp:getProperty property="eaddress" name="empBean"/>
  </tr>
  
  <tr>
    <td>Employee Basic Salary : </td>
    <td><jsp:getProperty property="basicSalary" name="empBean"/>
  </tr>
  
  <tr>
    <td>Employee Gross Salary : </td>
    <td><jsp:getProperty property="grossSalary" name="empBean"/>
  </tr>
  
  <tr>
    <td>Employee Net Salary : </td>
    <td><jsp:getProperty property="netsalary" name="empBean"/>
  </tr>
</table>
</html>