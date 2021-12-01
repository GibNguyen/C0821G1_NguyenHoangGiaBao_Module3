package repository;

import bean.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();
    void saveProduct(Product product);

}
