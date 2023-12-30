package com.example.green_mart;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Product> items;
    private int totalItems;
    private int totalPrice;

    public Cart(Product[] items, int totalItems, int totalPrice) {
        this.items = new ArrayList<>();
        this.totalItems = totalItems;
        this.totalPrice = totalPrice;
    }

    public Cart() {
    }

    public List<Product> getItems() {
        return items;
    }

    public int getTotalItems() {
        return totalItems;
    }

    public int getTotalPrice() {
        return totalPrice;
    }
    
    
}
