import java.io.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.nio.file.*;
import java.util.Collection;

@WebServlet(name = "FileUploadServlet", urlPatterns = { "/FileUploadServlet" })
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
    maxFileSize = 1024 * 1024 * 10,      // 10 MB
    maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class FileUploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uploadDirectory = "C:/upload"; // Change this to your desired directory
        
        // Create the directory if it doesn't exist
        Files.createDirectories(Paths.get(uploadDirectory));

        Part photoPart = request.getPart("photo");

        String photoFileName = Paths.get(photoPart.getSubmittedFileName()).getFileName().toString();

        // Save the files
        photoPart.write(Paths.get(uploadDirectory, photoFileName).toString());

        response.getWriter().print("Files uploaded successfully.");
    }
}
