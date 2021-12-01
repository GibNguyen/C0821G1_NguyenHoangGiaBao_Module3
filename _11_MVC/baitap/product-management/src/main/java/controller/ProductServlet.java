package controller;

import bean.Product;
import service.IProductService;
import service.impl.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductServlet",urlPatterns = {"","/product_list"})
public class ProductServlet extends HttpServlet {
    IProductService productService=new ProductService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if(actionUser==null){
            actionUser="";
        }
        switch (actionUser){
            case "create":
                
            default:
                request.setAttribute("productListServlet",this.productService.findAll());
                request.getRequestDispatcher("index.jsp").forward(request,response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if(actionUser==null){
            actionUser="";
        }
        switch (actionUser){
            case "create":
                request.getRequestDispatcher("create.jsp").forward(request,response);
            default:
                request.setAttribute("productListServlet",this.productService.findAll());
                request.getRequestDispatcher("index.jsp").forward(request,response);
        }

    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price= Double.parseDouble(request.getParameter("price"));
        String description= request.getParameter("description");
        String producer=request.getParameter("producer");
        Product product=new Product(id,name,price,description,producer);
        productService.saveProduct(product);
        request.setAttribute("productListServlet",this.productService.findAll());
        try {
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
