<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL ���� ����</title>
</head>
<body>
	<h2>JSTL ���� ����</h2>
	<hr/>
	
	<!-- set, out -->
	<h3>set, out</h3>
	<c:set var="product1" value="<b>���� ������</b>" />
	<c:set var="product2" value="�Ｚ ������ ��Ʈ" />
	
	<p>
	product1(jstl):
	<c:out value="${product1 }" default="Not registered" escapeXml="true" />
	</p>
	<p>product1(el): ${product1 }</p>
	<p>intArray[2]: ${intArray[2] }</p>
	<hr />
	
	<!-- forEach -->
	<h3>forEach: �迭 ���</h3>
	<ul>
		<c:forEach var="num" varStatus="i" items="${intArray }">
			<li>${i.index } : ${num }</li>
		</c:forEach>
	</ul>
	<hr />
	
	<!-- if -->
	<h3>if</h3>
	<c:set var="checkout" value="true" />
	<c:if test="${checkout }">
		<p>�ֹ� ��ǰ : ${product2 }</p>
	</c:if>
	<c:if test="${!checkout }">
		<p>�ֹ� ��ǰ�� �ƴ�!!</p>
	</c:if>
	<c:if test="${!empty product2 }">
		<p>
			<b>${product2 } �̹� �߰���!!</b>
		</p>
	</c:if>
	
	<!-- choose, when, otherwise -->
	<h3>choose, when, otherwise</h3>
	<c:choose>
		<c:when test="${checkout }">
			<p>�ֹ� ��ǰ: ${product2 }</p>
		</c:when>
		<c:otherwise>
			<p>�ֹ� ��ǰ�� �ƴ�!!</p>
		</c:otherwise>
	</c:choose>
	<hr />
	
	<!-- forTokens -->
	<h3>forTokens</h3>
	<c:forTokens var="city" items="Seoul|Tokyo|New York|Toronto" delims="|" varStatus="i">
		<c:if test="${i.first }">���� ��� :</c:if>
		${city }
		<c:if test="${!i.last }">, </c:if>
	</c:forTokens>
	<hr />
</body>
</html>