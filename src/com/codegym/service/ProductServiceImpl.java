package com.codegym.service;
import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;
    static {
        products = new HashMap<>();
        products.put(1, new Product(1,"Vaio S11","mau trang, core i7","sony",20000000.0,"vaio-s11.png",true));
        products.put(2, new Product(1,"Macbook Pro","mau xam, core i7","apple",30000000.0,"mac-book.jpeg",true));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }
    @Override
    public Product findByName(String name){
        List<Product> list = new ArrayList<>(products.values());
        for (Product product: list){
            if (product.getName().equals(name)){
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
