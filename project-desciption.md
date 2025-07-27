# Personal Accounts

Project Title: Personal Accounts

This is a porject to keep my financial status of every account that I own. 

## Main goals

* Keep track of every transaction done in my bank accounts. 
    * This also include cards associated to the account (phisical and virtual).
* Keep track of all credit cards. 
* Is to be able in a dashboard or page my current status. 

## Secondary Goals:
* Import files from the banks like csv reports to not do manual entries.
* Have the ability to see my future payments.


# General Technologie Stack

* Java and Spring Framework
* Postgres Database
* Maven

## Security
* User password authentication
* Stored in DB

## Spring Framework

### Spring Boot
* The project uses Spring Boot as the main application framework.
* Spring Boot simplifies configuration and setup, enabling rapid development.
* Main dependencies: spring-boot-starter-web, spring-boot-starter-data-jpa, spring-boot-starter-thymeleaf.

### SQL Migrations
* Liquibase

### Data Access
* spring-data with jpa, using spring repositories style.

### User interface:
* Use spring-boot-starter-web with thymeleaf.


# Data Model

## Primary Keys
* All primary keys should use BIGINT data type.
* We will use TSID (Time-Sorted ID)
    * For this we will use the Vlad Mihalcea's `hypersistence-tsid` library. 

## Monetary Values
* All monetary values should be stored with two fields:
    * Amount as bigint 
    * Currency as char(3) - ISO CODE


## Entities

Every entity should have this audit fields.
* createdAt
* updatedAt
* version

### Account 
* id 
* name
* balance
* currency
* type: BANK_ACCOUT, CREDIT_CARD, CASH, PROVIDER, ETC.

### Bank Account
* id
* accountId
* name
* number
* iban
* bankName or financialInstitution

### Credit Card
* id
* accountId


All accounts will work as an acocunting system, that means that there has to be an account for providers, cash account, bank account, etc. 

### Transaction
* id
* accountId
* currnecy
* amount
* transactionDate: date of the transaction
* statementDate: when tre transaction was booked
* description: description from the transaction or bank statement
* notes: to store personal notes
* tags: String separated by spaces
* categoryId

### Tag 
* id
* name

### Category
* id
* name
* descritpion


