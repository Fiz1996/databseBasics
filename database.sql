
create database SqlDatabseProject;

create table users(
    id int primary key ,
    full_name varchar(10) not null unique ,
    gender char(1) not null ,
    email varchar(20) not null unique ,
    created_at date not null ,
    country_code int,
    date_of_birth varchar(15) not null
);

create table countries (
        id varchar(10) primary key ,
    name varchar(20) not null,
    continent_name varchar(20) not null ,
    code int,
    foreign key (code)references users(id)

);

create table orders (
    id int primary key ,
    status varchar(6),
    created_at date,
    user_id int ,
    foreign key (user_id) references  users(id)
);

create table products (
    id int primary key ,
    name varchar(10) ,
    price int,
    status varchar(10) ,
    created_at date
);
create table order_products (
    quantity int ,
    order_id int ,
    product_id int,
    foreign key (order_id) references  orders(id),
    foreign key (product_id) references  products(id)
);



