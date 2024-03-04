import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@WebServlet("/SMSServlet")
public class SMSServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String twilioAccountSID = "AC0ba0a8776da1161cc91897270bd7882e";
        String twilioAuthToken = "b9dba7beec5690c349108042acb685db";
        String fromPhoneNumber = "70283 55805";

        Twilio.init(twilioAccountSID, twilioAuthToken);

        String toPhoneNumber = request.getParameter("to");
        String messageBody = request.getParameter("message");

        try {
            Message message = Message.creator(
                new PhoneNumber(toPhoneNumber),
                new PhoneNumber(fromPhoneNumber),
                messageBody
            ).create();

            response.getWriter().print("SMS sent successfully: " + message.getSid());
        } catch (Exception e) {
            response.getWriter().print("Error: " + e.getMessage());
        }
    }
}
