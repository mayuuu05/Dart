// 1. Question 1: Create a Banking System
// Create a class BankAccount with the following properties and methods:

// accountNumber (encapsulated, accessible via getters and setters)
// balance (private, accessible via a getter)
// deposit(amount) method to add money
// withdraw(amount) method to withdraw money with balance check
// Create a subclass SavingsAccount that:

// Adds an interest rate property
// Overrides the deposit method to add interest
// Requirements:

// Use inheritance to create SavingsAccount.
// Implement encapsulation for all properties.
// Demonstrate polymorphism by overriding the deposit method.




import 'dart:io';

class BankAccount {
  int? _accountNumber;
  double _balance = 0.0;

  // Setter 
  void setter(int accountNumber) {
    _accountNumber = accountNumber;
  }

  int? getAccountNumber() {
    return _accountNumber;
  }

  // Getter
  double getBalance() {
    return _balance;
  }

  // Deposit method
  void deposit(double amount) {
    _balance += amount;
  }


  void withdraw(double amount) {
    _balance -= amount;
  }
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(this.interestRate);


  void deposit(double amount) {
    double interest = amount * interestRate / 100;
    super.deposit(amount + interest);
  }
}

void main() {
  // create a BankAccount object
  BankAccount account = BankAccount();

   //  user input
  stdout.write('Enter account number:');
  int accountNumber = int.parse(stdin.readLineSync()!);
  account.setter(accountNumber);

  stdout.write('Enter amount for deposit:');
  double depositAmount = double.parse(stdin.readLineSync()!);
  account.deposit(depositAmount);

  stdout.write('Enter amount for withdraw:');
  double withdrawAmount = double.parse(stdin.readLineSync()!);
  account.withdraw(withdrawAmount);

  print("Account Number: ${account.getAccountNumber()}");
  print("Balance: ${account.getBalance()}");

  
}



















