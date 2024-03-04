import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CurrencyConverterServlet")
public class CurrencyConverterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double amount = Double.parseDouble(request.getParameter("amount"));
        String fromCurrency = request.getParameter("fromCurrency");
        String toCurrency = request.getParameter("toCurrency");

        // In a real application, fetch exchange rates from an external API.
        // For simplicity, we'll use hardcoded rates here.
        double conversionRate = getConversionRate(fromCurrency, toCurrency);

        double convertedAmount = amount * conversionRate;

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>Conversion Result</title></head><body>");
        out.println("<h1>Conversion Result</h1>");
        out.println("<p>" + amount + " " + fromCurrency + " is equal to " + convertedAmount + " " + toCurrency + "</p>");
        out.println("</body></html>");
    }

    // Simulated exchange rate data
    private double getConversionRate(String fromCurrency, String toCurrency) {
        // Add your exchange rate data or API integration here
        // For simplicity, we'll use hardcoded rates
        if (fromCurrency.equals("USD") && toCurrency.equals("EUR")) {
            return 0.85;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("JPY")) {
            return 110.12;
        } else if (fromCurrency.equals("USD") && toCurrency.equals("GBP")) {
            return 0.75;
        } else if (fromCurrency.equals("EUR") && toCurrency.equals("USD")) {
            return 1.18;
        } // Add more conversion rates here
        else if (fromCurrency.equals("USD") && toCurrency.equals("IND")) {
            return 83.18;
        }
        else if (fromCurrency.equals("IND") && toCurrency.equals("USD")) {
            return 0.012;
        }

        return 1.0; // Default to 1 if the conversion is not available
    }
}
