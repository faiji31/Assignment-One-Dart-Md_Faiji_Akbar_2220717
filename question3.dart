
class BankAccount {

  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; 

  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;


  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("✅ Deposit successful. \$${amount.toStringAsFixed(2)} added to $accountHolder's $accountType account.");
    } else {
      print("❌ Deposit failed. Amount must be positive.");
    }
  }


  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        print("✅ Withdrawal successful. \$${amount.toStringAsFixed(2)} removed from $accountHolder's $accountType account.");
      } else {

        print(" Withdrawal failed for $accountHolder. Insufficient funds. Attempted to withdraw \$${amount.toStringAsFixed(2)}, but only \$${balance.toStringAsFixed(2)} is available.");
      }
    } else {
      print(" Withdrawal failed. Amount must be positive.");
    }
  }


  double getBalance() {
    return balance;
  }

  void displayAccountInfo() {
    print("\n--- Account Information ---");
    print("Account Holder: $accountHolder");
    print("Account Number: $accountNumber");
    print("Account Type: $accountType");
    print("Current Balance: \$${balance.toStringAsFixed(2)}");
    print("---------------------------");
  }
}

void main() {
  print("--- Bank Account Operations Demo ---");


  BankAccount account1 = BankAccount("12345", "Faiji", "Savings");
  BankAccount account2 = BankAccount("67890", "Nayeem", "Checking");
  BankAccount account3 = BankAccount("11111", "Jubaer", "Savings");


  print("\n--- Depositing Money ---");
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);


  print("\n--- Withdrawing Money ---");
  account1.withdraw(200.0);
  account2.withdraw(100.0);

  print("\n--- Displaying Account Info ---");
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();


  print("\n--- Insufficient Funds Check ---");
  account2.withdraw(1000.0); 
  

  print("\nBob's final balance: \$${account2.getBalance().toStringAsFixed(2)}");
}