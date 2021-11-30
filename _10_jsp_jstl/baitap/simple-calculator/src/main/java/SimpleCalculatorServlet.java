import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SimpleCalculatorServlet",urlPatterns = {"/calculator"})
public class SimpleCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
        float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));
        String operator = request.getParameter("operator");
        float result = 0;
        String display="";
        PrintWriter printWriter = response.getWriter();
        if (operator.equals("additon")){
            result=firstOperand+secondOperand;
            display = firstOperand + " + " + secondOperand + " = "+ result;
        } else if (operator.equals("subtraction")){
            result=firstOperand-secondOperand;
            display = firstOperand + " - " + secondOperand + " = "+ result;
        }else if (operator.equals("multiplication")){
            result=firstOperand*secondOperand;
            display = firstOperand + " * " + secondOperand + " = "+ result;
        }else {
            if(secondOperand!=0) {
                result = firstOperand / secondOperand;
                display = firstOperand + " / " + secondOperand + " = " + result;
            } else {
                try {
                    throw new Exception ("Can't divide by zero");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        }

        request.setAttribute("display",display);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}