package service.impl;

import bean.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    IProductRepository productRepository=new ProductRepository();
    @Override
    public List<Product> findAll() {
        return this.productRepository.findAll();
    }

    @Override
    public void saveProduct(Product product) {
        this.productRepository.saveProduct(product);
    }
}
