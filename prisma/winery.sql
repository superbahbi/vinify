
CREATE TABLE wines (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    vintage INT NOT NULL,
    varietal VARCHAR(255) NOT NULL
);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE inventories (
    id SERIAL PRIMARY KEY,
    wine_id INT REFERENCES wines(id) NOT NULL,
    stock INT NOT NULL,
    sold INT NOT NULL
);

CREATE TABLE vineyards (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    varietals VARCHAR(255) NOT NULL,
    acreage DECIMAL(10,2) NOT NULL,
    owner_id INT REFERENCES owners(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INT REFERENCES customers(id) NOT NULL
);

CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id) NOT NULL,
    wine_id INT REFERENCES wines(id) NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE vendors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255) NOT NULL
);


