import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteImages")
public class DeleteImagesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the array of image paths from the request parameter
        String[] imagePaths = request.getParameterValues("imagePaths");

        if (imagePaths != null && imagePaths.length > 0) {
            for (String imagePath : imagePaths) {
                // Validate imagePath to prevent directory traversal attacks

                // Create a File object representing the image
                File imageFile = new File(imagePath);

                // Check if the file exists
                if (imageFile.exists()) {
                    // Delete the file
                    if (imageFile.delete()) {
                        response.getWriter().println("Image deleted successfully: " + imagePath);
                    } else {
                        response.getWriter().println("Failed to delete the image: " + imagePath);
                    }
                } else {
                    response.getWriter().println("Image not found: " + imagePath);
                }
            }
        } else {
            response.getWriter().println("No images selected for deletion");
        }
    }
}
