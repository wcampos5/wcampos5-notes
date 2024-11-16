CREATE TABLE northwind.categories (
    category_id smallint NOT NULL,
    category_name string NOT NULL,
    description string
);
CREATE TABLE northwind.customers (
    customer_id string NOT NULL,
    company_name string NOT NULL,
    contact_name string,
    contact_title string,
    address string,
    city string,
    region string,
    postal_code string,
    country string,
    phone string
);
CREATE TABLE northwind.employees (
    employee_id smallint NOT NULL,
    last_name string NOT NULL,
    first_name string NOT NULL,
    title string,
    title_of_courtesy string,
    birth_date TIMESTAMP,
    hire_date date,
    address string,
    city string,
    region string,
    postal_code string,
    country string,
    home_phone string,
    extension string,
    notes string,
    reports_to smallint,
    photo_path string,
    salary FLOAT64
)
PARTITION BY DATE(birth_date)
OPTIONS (
    require_partition_filter = TRUE,
    partition_expiration_days=12		
);
CREATE TABLE northwind.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price FLOAT64 NOT NULL,
    quantity smallint NOT NULL,
    discount FLOAT64 NOT NULL
)
PARTITION BY TIMESTAMP_TRUNC(_PARTITIONTIME, HOUR);


CREATE TABLE northwind.orders (
  order_id INT64,
  customer_id STRING,
  employee_id INT64,
  order_date DATE,
  required_date DATE,
  shipped_date DATE,
  ship_via INT64,
  freight FLOAT64,
  ship_name STRING,
  ship_address STRING,
  ship_city STRING,
  ship_region STRING,
  ship_postal_code STRING,
  ship_country STRING
)
PARTITION BY RANGE_BUCKET(order_id, GENERATE_ARRAY(10300, 12000, 100));



CREATE TABLE northwind.products (
    product_id smallint NOT NULL,
    product_name string NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit string,
    unit_price FLOAT64,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
)
PARTITION BY RANGE_BUCKET(product_id, GENERATE_ARRAY(1, 10001, 10))
CLUSTER BY category_id;

CREATE TABLE  northwind.shippers (
    shipper_id smallint NOT NULL,
    company_name string NOT NULL,
    phone string
);
CREATE TABLE  northwind.suppliers (
    supplier_id smallint NOT NULL,
    company_name string NOT NULL,
    contact_name string,
    contact_title string,
    address string,
    city string,
    region string,
    postal_code string,
    country string,
    phone string,
    fax string,
    homepage string
);
