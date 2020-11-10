# Bank Tech Test 🏦

[Objective](#objective) | [Instructions](#instructions) | [Process](#process) | [User Stories](#user-stories) 

This is a small REPL based banking application made in my 10th week at Makers Academy, to practice maintaining code quality and process.
## Objective

To build an App that enables the user to create a bank account with the following requirements:

- Should be able to interact with the code via a REPL like IRB. (Don't need to implement a command line interface that takes input from STDIN).
- Should have deposits and withdrawals.
- Should have the facility to print an account statement (date, amount, balance)
- Data can be kept in memory (it doesn't need to be stored to a database).

#### Acceptance Criteria:
**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```shell
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Instructions

### Project Setup
```shell
$ git clone https://github.com/ZishJawaid/Bank-Account-App.git
$ bundle
```
### Testing
```shell
$ rspec
$ rubocop
```
### Running the App
Launching IRB from the command line:
```shell
$ irb
```
Once in IRB:
```shell
> require './lib/account.rb'
```
Creating a new account (a new account opens with a default balance of zero):
```shell
$ account = Account.new 
```
However, you can also specify any starting balance you like:
```shell
$ account = Account.new(1000)
```
To make a deposit:
```shell
$ account.deposit(200)
```
To make a withdrawal:
```shell
$ account.withdraw(100)
```
To view your statement:
```shell
$ account.statement
```
## Screenshots
It should look something like this in your terminal:

![bank-tech-test-example](https://user-images.githubusercontent.com/67103839/98725569-3024a180-238d-11eb-9930-b3aa4d4371b1.png)
![bank-tech-test-demo](https://user-images.githubusercontent.com/67103839/98725570-30bd3800-238d-11eb-9a98-ef4038609040.gif)



## Process

This is the approach I took for designing and creating this solution:

- Set up repo:
    - Initialize RSpec
    - Initialize Git
    - Setup code coverage (SimpleCov) and code quality (RuboCop) testers to ensure good test coverage and a clean, consistent code style.

- Verify areas of uncertainty with the client:
    - Overdraft allowed? No
    - Ability to open a new account with a positive balance? Yes
- Create user stories (see below) based on the client's requirements

- Draw up class, state, method diagrams based on the user stories:
    - The classes were determined by considering the nouns in the user stories.
    - I decided to split my code into three separate classes as I believe these each represent the three core elements of the program:
      - You have an account that starts with a balance of 0, which updates with each transaction.
      - You have a transaction class, for each new transaction made.
      - You have a statement class, where each trasaction is added to to make a full statement.

    - I believe this is easy to understand and intuitive, and replicates largely how we think of a bank account in day to day life. This makes the code easily readable and adjustable. It follows basic OOP principles like the SRP.

    - Accounts are made up of transactions, so the account class depends on the transaction objects.
    - Statements need information from an account, so the statement class depends on the account object.
    - Methods and attributes for each class were restricted to only what each class could be expected to do.

    

Class  | Public methods | Attributes
--- | --- | ---
Transaction | debit, credit | transaction_log
Account  | deposit, withdraw, statement | balance
Statement | print_out | account, balance

- Write the code, using TDD: Red, Green, Refactor.
    - Methods were made to adhere to the Single Responsibility Principle as much as possible.
    - As many methods as possible were made private within their respective classes.


### User Stories
###### User Story 1
```shell
As a customer
So that I can keep my money safe
I want to be able to open a new bank account
```
###### User Story 2
```shell
As a customer
So that I can add money to my bank account
I want to make a deposit to my account
```
###### User Story 3
```shell
As a customer
So that I can spend my money
I want to make a withdrawal from my bank account
```
###### User Story 4
```shell
As a customer
So that I can view my account activity
I want to print my account statement
```




