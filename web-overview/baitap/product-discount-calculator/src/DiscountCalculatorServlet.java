import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountCalculatorServlet",urlPatterns = "/calculator")
public class DiscountCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("price"));
        float discountPercent = Float.parseFloat(request.getParameter("discountPercent"));
        float discountAmount = (price*discountPercent)/100;
        float discountPrice= price-discountAmount;

        String description=request.getParameter("description");

        PrintWriter writer=response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Description: " + description + "</h1>");
        writer.println("<h1>Price: " + price + "</h1>");
        writer.println("<h1>Discount Percent: " + discountPercent + "</h1>");
        writer.println("<h1>Discount Amount: " + discountAmount + "</h1>");
        writer.println("<h1>Discount Price: " + discountPrice + "</h1>");
        writer.println("</html>");
    }
}
