package com.example.green_mart;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static List<User> users = new ArrayList<>();
    public static List<Product> products = new ArrayList<>();
    public static List<Review> reviews = new ArrayList<>();

    public static void loadUserDataFromDatabase(){

    }

    public static void loadProductDataFromDatabase() {
        DatabaseManager db = new DatabaseManager();
        products.clear();

        for (Product product : db.getProducts()) {
            products.add(product);
            System.out.println(product.getName());
            System.out.println(product.getImage());
        }
        System.out.println(products.size());
    }

    public static void main(String[] args) {
        Main main = new Main();
//        main.loadUserDataFromDatabase();
//        main.loadProductDataFromDatabase();
    }
}
