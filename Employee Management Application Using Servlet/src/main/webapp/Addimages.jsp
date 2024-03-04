<!-- index.jsp -->
<%@ page import="java.io.File" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Image Gallery</title>
</head>
<body>

    <h1>Image Gallery</h1>

    <%-- List all images --%>
    <ul>
        <% File imageDir = new File(getServletContext().getRealPath("C:/upload"));
           String[] imageList = imageDir.list();
           if (imageList != null) {
               List<String> images = Arrays.asList(imageList);
               for (String imageName : images) { %>
                   <li>
                       <img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="<%= imageName %>" width="100">
                       <%= imageName %>
                   </li>
               <% }
           } %>
    </ul>

    <%-- Form to delete image --%>
    <form action="deleteImage" method="post">
        Image Name: <input type="text" name="imageName" required>
        <input type="submit" value="Delete Image">
    </form>

</body>
</html>
