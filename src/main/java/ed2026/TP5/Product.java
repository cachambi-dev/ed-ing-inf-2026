package ed2026.TP5;

//
// Created by Julio Tentor <jtentor@fi.unju.edu.ar>
//

public class Product {

    //region Attributes
    private Integer code;
    private String name;
    private Double price;
    private Integer stock;
    //endregion

    //region Getters and Setters
    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }
    //endregion

    //region Constructors
    public Product() {
        this(0, "", 0d, 0);
    }

    public Product(Integer code, String name, Double price, Integer stock) {
        setCode(code);
        setName(name);
        setPrice(price);
        setStock(stock);
    }
    //endregion

    @Override
    public String toString() {
        return "Product{" +
                "code=" + getCode() +
            ", name='" + getName() + '\'' +
            ", price=" + getPrice() +
            ", stock=" + getStock() +
                '}';
    }
}
