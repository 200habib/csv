CREATE TABLE products (
    name TEXT,
    product_ref TEXT PRIMARY KEY,
    price REAL,
    stock INTEGER
);

CREATE TABLE stores (
    store_id INTEGER PRIMARY KEY,
    city TEXT,
    employee_count INTEGER
);

CREATE TABLE sales (
    date TEXT,
    product_ref TEXT,
    quantity INTEGER,
    store_id INTEGER,
    FOREIGN KEY(product_ref) REFERENCES products(product_ref),
    FOREIGN KEY(store_id) REFERENCES stores(store_id)
);
