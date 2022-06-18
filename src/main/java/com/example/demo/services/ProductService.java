package com.example.demo.services;

import com.example.demo.dao.models.Product;
import com.example.demo.dao.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j // логирование
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;


    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProduct(Product product) {
        log.info("Saving new {}", product);
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }


    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}














