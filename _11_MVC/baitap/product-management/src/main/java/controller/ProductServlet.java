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
import java.util.ArrayList;
import java.util.List;

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
                this.createProduct(request,response);
            case "edit":
                editProduct(request,response);
                break;
            case "find":
                List<Product> findList=new ArrayList<>();
                for(Product product: this.productService.findAll()){
                    if (Integer.parseInt(request.getParameter("idFind"))==product.getId()){
                        findList.add(product);
                        request.setAttribute("productListServlet",findList);
                        request.getRequestDispatcher("index.jsp").forward(request,response);
                    }
                }
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
                break;
            case "delete":
               deleteProduct(request,response);
               break;
            case "edit":
                request.getRequestDispatcher("edit.jsp").forward(request,response);
            case "find":
                request.getRequestDispatcher("find.jsp").forward(request,response);
                break;
            default:
                request.setAttribute("productListServlet",this.productService.findAll());
                request.getRequestDispatcher("index.jsp").forward(request,response);
        }

    }
    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idCreate"));
        String name = request.getParameter("nameCreate");
        double price= Double.parseDouble(request.getParameter("priceCreate"));
        String description= request.getParameter("descriptionCreate");
        String producer=request.getParameter("producerCreate");
        Product product=new Product(id,name,price,description,producer);
        productService.saveProduct(product);
        request.setAttribute("productListServlet",this.productService.findAll());
       request.getRequestDispatcher("index.jsp").forward(request,response);
    }
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        for(Product product: this.productService.findAll()){
            if (Integer.parseInt(request.getParameter("idDelete"))==product.getId()){
                productService.removeProduct(product);
                request.setAttribute("productListServlet",this.productService.findAll());
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }
        }
    }
    private void editProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        for(Product product:this.productService.findAll()){
            if(Integer.parseInt(request.getParameter("idEdit"))==product.getId()){
                product.setName(request.getParameter("nameEdit"));
                product.setPrice(Double.parseDouble(request.getParameter("priceEdit")));
                product.setDescription(request.getParameter("descriptionEdit"));
                product.setProducer(request.getParameter("producerEdit"));
            }
        }
        request.setAttribute("productListServlet",this.productService.findAll());
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
