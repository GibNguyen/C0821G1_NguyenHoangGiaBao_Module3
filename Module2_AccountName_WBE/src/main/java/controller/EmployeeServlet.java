package controller;

import bean.Employee;
import service.EmployeeService;
import service.IEmployeeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EmployeeServlet", urlPatterns = {"/employeeServlet"})
public class EmployeeServlet extends HttpServlet {
    IEmployeeService employeeService = new EmployeeService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser == null) {
            actionUser = "";
        }
        switch (actionUser) {
            case "create":
                createNewEmployee(request, response);
                break;
            case "edit":
                editEmployee(request,response);
                break;
        }

    }

    private void createNewEmployee(HttpServletRequest request, HttpServletResponse response) {
        int idAdd = Integer.parseInt(request.getParameter("employeeId"));
        String nameAdd = request.getParameter("employeeName");
        String birthAdd = request.getParameter("employeeBirthDay");
        String idCardAdd = request.getParameter("employeeIdCard");
        double salaryAdd = Double.parseDouble(request.getParameter("employeeSalary"));
        String phoneAdd = request.getParameter("employeePhone");
        String emailAdd = request.getParameter("employeeEmail");
        String addressAdd = request.getParameter("employeeAdress");
        int possitionIdAdd = Integer.parseInt(request.getParameter("employeePossitionId"));
        int educationDegreeIdAdd = Integer.parseInt(request.getParameter("employeeEducationDegreeId"));
        int divisionIdAdd = Integer.parseInt(request.getParameter("employeeDivisionId"));

        Employee employee = new Employee(idAdd, nameAdd, birthAdd, idCardAdd, salaryAdd, phoneAdd, emailAdd, addressAdd, possitionIdAdd, educationDegreeIdAdd, divisionIdAdd);
        employeeService.insertEmployee(employee);
        request.setAttribute("employeeListServlet", employeeService.showListEmployee());
        try {
            request.getRequestDispatcher("employee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser == null) {
            actionUser = "";
        }
        switch (actionUser) {
            case "employee":
                request.setAttribute("employeeListServlet", employeeService.showListEmployee());
                request.getRequestDispatcher("employee.jsp").forward(request, response);
                break;
            case "create":
                request.getRequestDispatcher("create_employee.jsp").forward(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            case "edit":
                request.getRequestDispatcher("edit_employee.jsp").forward(request, response);
                break;
            case "default":
                request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) {
            for(Employee employee:employeeService.showListEmployee()){
                if(Integer.parseInt(request.getParameter("idEdit"))==employee.getEmployeeId()){
                    employee.setEmployeeName(request.getParameter("editName"));
                    employee.setEmployeeBirthday(request.getParameter("editBirthDay"));
                    employee.setEmployeeIdCard(request.getParameter("editIdCard"));
                    employee.setEmployeeSalary(Double.parseDouble(request.getParameter("editSalary")));
                    employee.setEmployeePhone(request.getParameter("editPhone"));
                    employee.setEmployeeEmail(request.getParameter("editEmail"));
                    employee.setEmployeeAdress(request.getParameter("editAdress"));
                    employee.setPossitionId(Integer.parseInt(request.getParameter("editPossitionId")));
                    employee.setEducationDegreeId(Integer.parseInt(request.getParameter("editEducationDegreeId")));
                    employee.setDivisionId(Integer.parseInt(request.getParameter("editDivisionId")));
                    employeeService.updateEmployee(employee);
                    request.setAttribute("employeeListServlet", employeeService.showListEmployee());
                    try {
                        request.getRequestDispatcher("employee.jsp").forward(request, response);
                    } catch (ServletException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        for (Employee employee : employeeService.showListEmployee()) {
            if (Integer.parseInt(request.getParameter("idDelete")) == employee.getEmployeeId()) {
                employeeService.deleteEmployee(employee);
            }
        }
        request.setAttribute("employeeListServlet", employeeService.showListEmployee());
        try {
            request.getRequestDispatcher("employee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
