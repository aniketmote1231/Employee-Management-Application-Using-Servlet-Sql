<!DOCTYPE html>
<html>
<head>
    <title>Chat</title>
</head>
<body>
    <h1>Chat Messages</h1>
    <ul>
        <c:forEach var="message" items="${messages}">
            <li>${message}</li>
        </c:forEach>
    </ul>
    <form action="ChatServlet" method="post">
        Message: <input type="text" name="message" />
        <input type="submit" value="Send" />
    </form>
</body>
</html>
