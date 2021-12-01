package service;

import bean.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    void saveProduct(Product product);
}
