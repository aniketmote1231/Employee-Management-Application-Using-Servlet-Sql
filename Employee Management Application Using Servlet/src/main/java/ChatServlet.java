import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChatServlet")
public class ChatServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<String> messages = new ArrayList<String>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String message = request.getParameter("message");
        if (message != null && !message.isEmpty()) {
            messages.add(message);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<html><head><title>Chat</title></head><body>");
        out.println("<h1>Chat Messages</h1>");
        out.println("<ul>");

        for (String message : messages) {
            out.println("<li>" + message + "</li>");
        }

        out.println("</ul>");
        out.println("<form action='ChatServlet' method='post'>");
        out.println("Message: <input type='text' name='message' />");
        out.println("<input type='submit' value='Send' />");
        out.println("</form>");
        out.println("</body></html>");
    }
}
