<!DOCTYPE html>
<html>
<head>
    <title>Send SMS</title>
</head>
<body>
    <h1>Send SMS</h1>
    <form action="SMSServlet" method="post">
        <label for="to">Recipient's Phone Number:</label>
        <input type="text" id="to" name="to" required><br><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" required></textarea><br><br>

        <input type="submit" value="Send SMS">
    </form>
</body>
</html>
