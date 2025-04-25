package dao;

import model.Product;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    
    private static final String host = "jdbc:derby://localhost:1527/myderbyDB";
    private static final String user =  "brandon";
    private static final String password = "brandon";
    
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String selectAll = "SELECT * FROM PRODUCTS";
        
        try {
            // Load Derby JDBC Driver (important for some versions)
            Class.forName("org.apache.derby.jdbc.ClientDriver"); 

            try (Connection conn = DriverManager.getConnection(host, user, password);
                 PreparedStatement stmt = conn.prepareStatement(selectAll);
                 ResultSet rs = stmt.executeQuery()) { // ✅ Fixed execution
            
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("PRODUCT_ID"));
                    product.setName(rs.getString("NAME"));
                    product.setPrice(rs.getDouble("PRICE"));
                    product.setDescription(rs.getString("DESCRIPTION"));
                    product.setImageUrl(rs.getString("IMAGE_URL"));  // Ensure this column name is correct
                    product.setStock(rs.getInt("STOCK_QUANTITY"));
                    product.setCategory(rs.getString("CATEGORY"));
               

                    products.add(product);                  }
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Derby JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }
}
