package repository.impl;

import bean.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ProductRepository implements IProductRepository {
    private static Map<Integer,Product> productMap=new TreeMap<>();
    static {
        productMap.put(1,new Product(1,"Iphone",15,"None","Apple"));
        productMap.put(2,new Product(2,"Galaxy",17,"None","Samsung"));
        productMap.put(3,new Product(3,"BlackShark",20,"None","Xiaomi"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void saveProduct(Product product) {
        productMap.put(product.getId(),product);
    }

}
