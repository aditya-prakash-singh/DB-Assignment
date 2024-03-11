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