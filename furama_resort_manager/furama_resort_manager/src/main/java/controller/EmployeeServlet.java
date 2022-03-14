package controller;

import model.Customer;
import model.Employee;
import repository.IEmployeeRepository;
import service.IEmployeeService;
import service.imp.EmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EmployeeServlet",urlPatterns = "/employees")
public class EmployeeServlet extends HttpServlet {
    IEmployeeService employeeService = new EmployeeService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionEmployee = request.getParameter("actionEmployee");
        if (actionEmployee == null) {
            actionEmployee = "";
        }
        switch (actionEmployee) {
            case "create":
                createNewEmployee(request,response);
                break;
            case "edit":
                editEmployee(request,response);
                break;
            default:
                loadListEmployee(request,response);
                break;

        }
    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String identityCard = request.getParameter("identityCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String positionId = request.getParameter("positionId");
        String educationDegreeId = request.getParameter("educationDegreeId");
        String divisionId = request.getParameter("divisionId");

        Employee employee = new Employee(id,name,birthday,address,identityCard,phoneNumber,email,salary,positionId,educationDegreeId,divisionId);

        employeeService.editEmployee(employee);
        loadListEmployee(request,response);

    }

    private void createNewEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String identityCard = request.getParameter("identityCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String positionId = request.getParameter("positionId");
        String educationDegreeId = request.getParameter("educationDegreeId");
        String divisionId = request.getParameter("divisionId");

        Employee employee = new Employee(id,name,birthday,address,identityCard,phoneNumber,email,salary,positionId,educationDegreeId,divisionId);

        employeeService.createNewEmployee(employee);
        loadListEmployee(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionEmployee = request.getParameter("actionEmployee");
        if (actionEmployee == null) {
            actionEmployee = "";
        }
        switch (actionEmployee) {
            case "create":
                request.getRequestDispatcher("/employee/create.jsp").forward(request,response);
                break;
            case "edit":
                String id = request.getParameter("id");
                for (Employee employee:employeeService.loadListEmployee()){
                    if (employee.getId().equals(id)){
                        request.setAttribute("employee",employee);
                    }
                }
                request.getRequestDispatcher("/employee/edit.jsp").forward(request,response);
                break;
            case "delete":
                deleteEmployee(request,response);
                break;
            default:
                loadListEmployee(request,response);
                break;

        }
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        for (Employee employee:employeeService.loadListEmployee()){
            if (employee.getId().equals(id)){
                employeeService.deleteEmployee(employee);
            }
        }
        loadListEmployee(request,response);
    }

    private void loadListEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("employeeList",employeeService.loadListEmployee());
        request.getRequestDispatcher("/employee/list.jsp").forward(request,response);
    }
}
