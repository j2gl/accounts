# Notes

The goal of the project is to have one place to track and check my finance status.  The second goal is that I don't want to be adding data manually to spreadsheets to see my finance status, and try to use CSV or other files to import account statuses.  

What Data should I store?

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


