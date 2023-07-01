DROP DATABASE IF EXISTS website_content;
CREATE DATABASE website_content;
USE website_content;
CREATE TABLE pages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(20) NOT NULL,
    subcategory VARCHAR(20) NOT NULL,
    inside VARCHAR (20) UNIQUE NOT NULL,
    content VARCHAR(5000)
);
select * from pages;