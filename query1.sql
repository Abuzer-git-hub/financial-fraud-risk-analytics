CREATE DATABASE fraud_dw;

USE fraud_dw;
USE fraud_dw;

CREATE TABLE Fact_Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    step_value INT,
    amount DOUBLE,
    oldbalanceOrg DOUBLE,
    newbalanceOrig DOUBLE,
    oldbalanceDest DOUBLE,
    newbalanceDest DOUBLE,
    isFraud INT,
    transaction_type VARCHAR(50)
);

CREATE TABLE Dim_FraudStatus (
    fraud_status_id INT PRIMARY KEY AUTO_INCREMENT,
    isFraud INT,
    status_name VARCHAR(50)
);

CREATE TABLE Dim_Time (
    time_id INT PRIMARY KEY AUTO_INCREMENT,
    step_value INT
);

CREATE TABLE Dim_TransactionType (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_type VARCHAR(50)
);
CREATE TABLE Fact_Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    step_value INT,
    amount DOUBLE,
    oldbalanceOrg DOUBLE,
    newbalanceOrig DOUBLE,
    oldbalanceDest DOUBLE,
    newbalanceDest DOUBLE,
    isFraud INT,
    transaction_type VARCHAR(50)
);
CREATE TABLE Dim_FraudStatus (
    fraud_status_id INT PRIMARY KEY AUTO_INCREMENT,
    isFraud INT,
    status_name VARCHAR(50)
);
CREATE TABLE Dim_Time (
    time_id INT PRIMARY KEY AUTO_INCREMENT,
    step_value INT
);
LOAD DATA LOCAL INFILE '"C:\Users\legen\Documents\cleaned_fraud_data.csv"'
INTO TABLE fact_transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
