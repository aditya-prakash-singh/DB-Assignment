# **Answers**


![ecommerce table](https://raw.githubusercontent.com/iAmritMalviya/DB-Assignment/main/product-management-ecommerce-table-.webp)


### 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram. ###

In the "Product" table:</br>
The category_id field is a foreign key that refers to the primary key (id) in the "Product_Category" table.</br>
This establishes a link between each product and a specific category.

In the "Product_Category" table:</br>
The id field is the primary key, serving as a unique identifier for each category.</br>
The "Product" table's category_id references this id field, creating a relationship between products and their respective categories.

The relationship allows each product to be associated with a single category from the "Product_Category" table.

### 2. How could you ensure that each product in the "Product" table has a valid category assigned to it? ###

To ensure that each product in the "Product" table has a valid category assigned to it, we can use a foreign key constraint. </br>In the database schema, the category_id field in the "Product" table is the foreign key that references the primary key (id) in the "Product_Category" table.</br>By defining a foreign key constraint, we enforce referential integrity, meaning that the values in the category_id field of the "Product" table must correspond to existing values in the primary key column of the "Product_Category" table.

### 3. Create schema in any Database script or any ORM (Object Relational Mapping). ###

### <a href='https://github.com/aditya-prakash-singh/DB-Assignment/blob/main/schema.sql'>Schema Link</a>
