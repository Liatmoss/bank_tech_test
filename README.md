# Bank Tech Test

## Requirements
- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria
- **Given** a client makes a deposit of 1000 on 10-01-2012
- **And** a deposit of 2000 on 13-01-2012
- **And** a withdrawal of 500 on 14-01-2012
- **When** she prints her bank statement
- **Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### To run the program/tests:
1. Install gems using 'bundle install'
2. Run the program in IRB using the example below
3. Use 'rspec' to run tests with SimpleCov checking the coverage - coverage should be higher than 95%
4. If all tests pass, run 'rubocop' to check the readability of code

### Example of code running in IRB:

```
2.6.3 :001 > require './lib/statement'
 => true
2.6.3 :002 > s = Statement.new(a = Account.new)
 => #<Statement:0x00007f9baf8e7478 @amount=#<Amount:0x00007f9baf8e74c8 @balance=0, @statement=[]>>
2.6.3 :003 > a.deposit(500)
 => ["16/12/2019 || 500.00 || || 500.00"]
2.6.3 :004 > a.withdraw(200)
 => ["16/12/2019 || 500.00 || || 500.00", "16/12/2019 || || 200.00 || 300.00"]
2.6.3 :005 > s.print
 => "date || credit || debit || balance\n 16/12/2019 || || 200.00 || 300.00\n16/12/2019 || 500.00 || || 500.00"
 ```

#### Approach to solving the problem and how code is structured:
- This problem is separated into two classes, Account and Statement to ensure that everything was cohesive and DRY
- The Account class starts with a default balance of 0 and is adjusted when amounts are deposited or withdrawn. Each entry in the account is added to the statement array with the date the change was made.
- The single responsibility of the Statement class is to print the array with the parameters specified in the acceptance criteria
