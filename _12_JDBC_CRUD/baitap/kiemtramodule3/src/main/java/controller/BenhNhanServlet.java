package controller;

import bean.BenhNhan;
import service.BenhNhanService;
import service.IBenhNhanService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BenhAnServlet",urlPatterns = {"","/benhanServlet"})
public class BenhNhanServlet extends HttpServlet {
    IBenhNhanService benhNhanService=new BenhNhanService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser = request.getParameter("actionUser");
        if (actionUser == null) {
            actionUser = "";
        }
        switch (actionUser) {
            case "delete":
                deleteBenhNhan(request, response);
                break;
            case "edit":
                editBenhNhan(request,response);
                break;
        }
    }

    private void editBenhNhan(HttpServletRequest request, HttpServletResponse response) {
        for(BenhNhan benhNhan:benhNhanService.showListBenhNhan()){
            if(request.getParameter("idEdit")==benhNhan.getMaBenhNhan()){
                benhNhan.setTenBenhNhan(request.getParameter("editTenBenhNhan"));
                benhNhan.setNgayNhapVien(request.getParameter("editNgayNhapVien"));
                benhNhan.setNgayRaVien(request.getParameter("editNgayRaVien"));
                benhNhan.setLyDoNhapVien(request.getParameter("editLyDo"));
                benhNhanService.updateBenhNhan(benhNhan);
                request.setAttribute("employeeListServlet",benhNhanService.showListBenhNhan());
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

    private void deleteBenhNhan(HttpServletRequest request, HttpServletResponse response) {
        for (BenhNhan benhNhan : benhNhanService.showListBenhNhan()) {
            if (request.getParameter("idDelete") == benhNhan.getMaBenhNhan()) {
                benhNhanService.deleteBenhNhan(benhNhan);
            }
        }
        request.setAttribute("benhnhanListServlet",benhNhanService.showListBenhNhan());
        try {
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
            case "edit":
                request.getRequestDispatcher("edit_benhnhan.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("benhnhanListServlet",benhNhanService.showListBenhNhan());
                request.getRequestDispatcher("index.jsp").forward(request, response);
        }

    }
}
