# bank_tech_test

Week 10 tech test at Makers. The purpose of this tech test is to practice OO design and TDD, and reflect on how to improve personal programming practices.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## Quickstart
Clone this repository, then

```bash
> bundle install
> rspec # to run the tests and see test coverage

> irb # to interact with the code via an IRB REPL.
```
```bash
# irb
2.6.3 :001 > require './lib/account.rb'
 => true 
2.6.3 :002 > account = Account.new
 => #<Account:0x00007fa54f9621d8 @transactions=#<TransactionHistory:0x00007fa54f9621b0 @transactions=[], @transaction_class=Transaction>, @balance=0> 
2.6.3 :003 > account.deposit('10/01/2012', 1000.00)
 => 1000.0 
2.6.3 :004 > account.deposit('13/01/2012', 2000.00)
 => 3000.0 
2.6.3 :005 > account.withdrawal('14/01/2012', 500.00)
 => 2500.0 
2.6.3 :006 > account.print
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


## User stories

```
As a new user
So that I can keep track of my finances
I want to create a bank account.

As an account holder
So that I can keep my money safe
I want to be able to deposit the money in the bank account.

As an account holder
So that I can spend my money
I want to be able to withdraw money from my bank account.

As an account holder
So that I keep track of my finances
I want to be able to print an account statement.

As an account holder
So that I have a clear view of my expenses
I want the newest transactions to show first.

As an account holder
So that I don't spend more than I should
I want my account to tell me if I have insufficient funds when withdrawing money.
```

## Code Structure
After writing the user stories, I broke down the approach in smaller steps which allowed me to split responsibilites into classes. I used BigDecimal to provide support for accurate floating points numbers.

The program is split into four classes, each built to handle a single responsibility. The Account class is bringing all of these responsibilites together, by storing deposits and withdrawals, and printing account statements. 

* Transaction: stores transaction information such as date, amount, type of transaction, balance  
* TransactionHistory: stores all the user transactions  
* Account: manages the user transactions  
* PrintStatement: prints to stdout all the transactions  

## Technologies Used

```
ruby - development
rspec - testing
rubocop and simplecov - linting and test coverage, respectively
```

## Reflection

The whole tech test was deciding what I should prioritise in my code, the model or the presentation. After a couple of false starts, I decided to write code that models the statement table as it is displayed, as it seemed a clearer option. The alternative was to build a straightforward model and manipulate the display, rather than the other way around, which did not feel as intuitive as modelling the table.