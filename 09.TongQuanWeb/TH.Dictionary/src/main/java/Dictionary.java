import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "Dictionary", value = "/Dictionary")
public class Dictionary extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello","xin chào");
        dictionary.put("book","quyển vở");
        dictionary.put("how","thế nào");
        dictionary.put("computer","máy tính");

        String search = request.getParameter("txtSearch");

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        String result = dictionary.get(search);
        if (result != null) {
            printWriter.println("Word: " + search);
            printWriter.println("<br/>");
            printWriter.println("Result: " + result);
        } else {
            printWriter.println("Not found");
        }
        printWriter.println("</html>");
    }
}
