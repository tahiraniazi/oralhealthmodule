<%@ include file="/WEB-INF/template/include.jsp" %>
<openmrs:htmlInclude file="/moduleResources/oralhealthmodule/delete_icon.gif"/>
<html>
<head>
</head>
<body>

<a href="module/oralhealthmodule/addOralHealth.form?patientId=${patient.patientId}&patientNameText=${patient.names}&birthdateText=${patient.birthdate}"><spring:message code="general.add"/></a>
<br /><br />

<div class="boxHeader">
	<b><spring:message code="oralhealthmodule.listheader"/></b>
</div>
<div class="box">
	<table cellpadding="2" cellspacing="0" id="oralHealth" width="98%">
		<tr>
			<th> <spring:message code="oralhealthmodule.oralHealthId"/> </th>
			<th> <spring:message code="oralhealthmodule.patientName"/> </th>
			<th> <spring:message code="oralhealthmodule.doctorName"/> </th>
			<th> <spring:message code="oralhealthmodule.examinationDate"/> </th>
			<th> <spring:message code="general.action"/> </th>
		</tr>
		<c:forEach var="patAssessment" items="${patientAssessments}" >
		<tr>
				<td valign="top" style="white-space: nowrap"><a href="/openmrs/module/oralhealthmodule/addOralHealth.form?id=${patAssessment.oralHealthId}">${assessment.oralHealthId}</a></td>
				<td valign="top">${patAssessment.patientName}</td>
				<td valign="top">${patAssessment.doctorName}</td>
				<td valign="top">${patAssessment.examinationDate}</td>
				<td valign="top" style="white-space: nowrap"><a href="/openmrs/module/oralhealthmodule/deleteOralHealth.form?id=${patAssessment.oralHealthId}"><img src="${pageContext.request.contextPath}/moduleResources/oralhealthmodule/delete_icon.gif"></a></td>
		</tr>
		</c:forEach>
	</table>
</div>
<br/>
</body>
</html>
