package controller;

import model.Customer;
import service.ICustomerService;
import service.imp.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customers")
public class CustomerServlet extends HttpServlet {
        ICustomerService customerService = new CustomerService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "create":
                createNewCustomer(request,response);
                break;
            case "edit":
                editCustomer(request,response);
                break;
            default:
                loadListCustomer(request,response);
                break;

        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("nameCustomer");
        String birthday = request.getParameter("birthday");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String identityCard = request.getParameter("identityCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String typeId = request.getParameter("typeId");

        Customer customer = new Customer(id,name,birthday,address,identityCard,phoneNumber,email,gender,typeId);

        customerService.editCustomer(customer);
        loadListCustomer(request,response);

    }

    private void createNewCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("nameCustomer");
        String birthday = request.getParameter("birthday");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String identityCard = request.getParameter("identityCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String typeId = request.getParameter("typeId");

        Customer customer = new Customer(id,name,birthday,address,identityCard,phoneNumber,email,gender,typeId);

        customerService.createNewCustomer(customer);
        loadListCustomer(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "create":
                request.getRequestDispatcher("/customer/create.jsp").forward(request,response);
                break;
            case "edit":
                String id = request.getParameter("id");
                for (Customer customer:customerService.loadListCustomer()){
                    if (customer.getId().equals(id)){
                        request.setAttribute("customer",customer);
                    }
                }
                request.getRequestDispatcher("/customer/edit.jsp").forward(request,response);
                break;
            case "delete":
                deleteCustomer(request,response);
                break;
            default:
                loadListCustomer(request,response);
                break;

        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        for (Customer customer:customerService.loadListCustomer()){
            if (customer.getId().equals(id)){
                customerService.deleteCustomer(customer);
            }
        }
        loadListCustomer(request,response);

    }

    private void loadListCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setAttribute("customerList",customerService.loadListCustomer());
       request.getRequestDispatcher("/customer/list.jsp").forward(request,response);
    }
}
