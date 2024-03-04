<!DOCTYPE html>
<html>
<head>
    <title>Currency Converter</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <h1>Currency Converter</h1>
    <form action="CurrencyConverterServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="number" name="amount" step="0.01" required>
        
        <label for="fromCurrency">From Currency:</label>
        <select name="fromCurrency" required>
            <option value="USD">US Dollar (USD)</option>
             <option value="IND">India</option>
            <option value="EUR">Euro (EUR)</option>
            <option value="JPY">Japanese Yen (JPY)</option>
            <option value="GBP">British Pound (GBP)</option>
        </select>
        
        <label for="toCurrency">To Currency:</label>
        <select name="toCurrency" required>
            <option value="USD">US Dollar (USD)</option>
             <option value="IND">India</option>
            <option value="EUR">Euro (EUR)</option>
            <option value="JPY">Japanese Yen (JPY)</option>
            <option value="GBP">British Pound (GBP)</option>
        </select>
        
        <button type="submit">Convert</button>
    </form>
</body>
</html>
