# bank_tech_test

Week 10 tech test at Makers. The purpose of this is to practice OO design and TDD.

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



