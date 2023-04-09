-- Create the date dimension table
CREATE TABLE date (
    id INTEGER PRIMARY KEY,
    date_val DATE NOT NULL,
    year INTEGER NOT NULL,
    yearmonth TEXT NOT NULL,
    weekend TEXT NOT NULL
);

-- Create the product dimension table
CREATE TABLE product (
    id INTEGER PRIMARY KEY,
    code TEXT NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    category TEXT NOT NULL
);

-- Create the sales fact table
CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    date_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price TEXT NOT NULL,
    total_price TEXT NOT NULL,
    FOREIGN KEY (date_id) REFERENCES date(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- Insert some sample data into the date_dimension table
INSERT INTO date (id, date_val, year, yearmonth, weekend)
VALUES 
    (1, '2023-04-01', 2023, '2023-04', '1'),
    (2, '2023-04-02', 2023, '2023-04', '1'),
    (3, '2023-05-03', 2023, '2023-05', '0'),
    (4, '2023-05-04', 2023, '2023-05', '0'),
    (5, '2023-05-05', 2023, '2023-05', '0');

-- Insert some sample data into the product table
INSERT INTO product (id, code, name, description, category)
VALUES
    (1, 'SKU001' ,'Product A', 'A great product', 'Category 1'),
    (2, 'SKU001' ,'Product B', 'Another great product', 'Category 1'),
    (3, 'sku002' ,'Product C', 'Yet another great product', 'Category 2');

-- Insert some sample data into the sales table
INSERT INTO sales (sale_id, date_id, product_id, quantity, unit_price, total_price)
VALUES
    (1, 1, 1, 10,'9,99', '99,90'),
    (2, 2, 2, 5, '19,99', '99,95'),
    (3, 3, 1, 2, '12,50', '25,00'),
    (4, 4, 3, 1, '1.049,99', '1.049,99'),
    (5, 5, 4, 3, '14,99', '44,97');
