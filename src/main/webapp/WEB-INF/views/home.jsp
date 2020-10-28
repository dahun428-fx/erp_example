<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<p>
	my name is ${name }
	<c:forEach items="${list }" var="list">
		<p>${list.code } , ${list.name } </p>
	</c:forEach>
</p>

</body>
</html>
