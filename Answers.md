<!-- ### Read the diagram carefully and answer the below questions. ### -->

![ecommerce table](https://raw.githubusercontent.com/iAmritMalviya/DB-Assignment/main/product-management-ecommerce-table-.webp)

**Answers**

### 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram. ###

In the "Product" table:
The category_id field is a foreign key that refers to the primary key (id) in the "Product_Category" table.
This establishes a link between each product and a specific category.

In the "Product_Category" table:
The id field is the primary key, serving as a unique identifier for each category.
The "Product" table's category_id references this id field, creating a relationship between products and their respective categories.

The relationship allows each product to be associated with a single category from the "Product_Category" table.

### 2. How could you ensure that each product in the "Product" table has a valid category assigned to it? ###

To ensure that each product in the "Product" table has a valid category assigned to it, we can use a foreign key constraint. In the database schema, the category_id field in the "Product" table is the foreign key that references the primary key (id) in the "Product_Category" table. By defining a foreign key constraint, we enforce referential integrity, meaning that the values in the category_id field of the "Product" table must correspond to existing values in the primary key column of the "Product_Category" table.

### 3. Create schema in any Database script or any ORM (Object Relational Mapping). ###

# <schema.sql link>
-- product_category schema
CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- product_inventory schema
CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- discount schema
CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    discount_percentage DECIMAL,
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- product schema
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    SKU VARCHAR(255),
    category_id INT,
    inventory_id INT,
    price DECIMAL,
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
    FOREIGN KEY (discount_id) REFERENCES discount(id)
);


~ Aditya Prakash Singh

