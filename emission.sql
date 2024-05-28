create database industry;
create table emissions (    
    id int not null auto_increment,
    industry varchar(255) not null,
    product varchar(255) not null,
    emission_year int not null,
    emission_amount float not null,
    primary key (id)    
);

INSERT INTO emissions (industry, product, emission_year, emission_amount) VALUES
('Energy', 'Coal', 2023, 1500.50),
('Energy', 'Oil', 2023, 1200.75),
('Transportation', 'Cars', 2023, 800.30),
('Transportation', 'Trucks', 2023, 950.00),
('Agriculture', 'Rice', 2023, 600.20),
('Agriculture', 'Wheat', 2023, 450.15),
('Manufacturing', 'Cement', 2023, 1100.60),
('Manufacturing', 'Steel', 2023, 1300.80),
('Technology', 'Electronics', 2023, 400.00),
('Technology', 'Computers', 2023, 500.90),
('Energy', 'Coal', 2022, 1400.50),
('Energy', 'Oil', 2022, 1150.75),
('Transportation', 'Cars', 2022, 780.30),
('Transportation', 'Trucks', 2022, 920.00),
('Agriculture', 'Rice', 2022, 580.20),
('Agriculture', 'Wheat', 2022, 430.15),
('Manufacturing', 'Cement', 2022, 1080.60),
('Manufacturing', 'Steel', 2022, 1280.80),
('Technology', 'Electronics', 2022, 390.00),
('Technology', 'Computers', 2022, 480.90);
