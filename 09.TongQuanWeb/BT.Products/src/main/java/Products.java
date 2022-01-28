import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Products", value = "/Products")
public class Products extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("price"));
        float percent = Float.parseFloat(request.getParameter("percent"));

        float discountAmount = (float) (price * percent * 0.01);
        float discountPrice = price - discountAmount;

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("Discount Amount: " + discountAmount);
        printWriter.println("Discount Price: " + discountPrice);
        printWriter.println("</html>");
    }
}
