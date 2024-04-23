// // 2. WAP to simulate Super Market Billing system in which...

// // Create multiple customers through array of object.
// // When each customer is entered (instantiated) note their cust_id, cust_name, cust_contact
// // Create a menu driven system which gives the customer verities of categories and their products.
// // Whenever user selects any product simulate the feature to add product in cust_cart which will 
// //contain 4 parameters for each product pro_id, pro_name, pro_qty, pro_price.
// // Apply billing and discount criteria's on the final amount after calculating each customer's
// // number of product's price.
// //      10% disc. on 500 - 1500
// //      20% disc. on 1500 - 3500
// //      25% disc. on 3500 - 6500
// //      30% disc. for above all.
// // add searching functionalities by cust_id which gives cust_id, cust_name, cust_contact,
// // list of products, their price ang quantity and include final amount and discount amount.


import 'dart:io';

void main() {
  int choice;

  choice = Market.Dashboard();

  All_Product p1 = All_Product();

  List customerList = [];

  while (true) {
    switch (choice) {
      case 1:
        Customer c1 = new Customer();
        c1.Input();
        p1 = new All_Product();
        Map map = {};
        map['customerInfo'] = c1;
        List list = p1.Materials();
        map['cartData'] = list;
        customerList.add(map);
        break;
      case 2:
        for (int i = 0; i < customerList.length; i++) {
          customerList[i]['customerInfo'].Output();
          All_Product.Cart_Data(customerList[i]['cartData']);
        }
        break;
      case 3:
        int searchId;
        bool found = false;
        stdout.write("Enter cutomer id  : ");
        searchId = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < customerList.length; i++) {
          if (searchId == customerList[i]['customerInfo'].TakeId()) {
            found = true;
            customerList[i]['customerInfo'].Output();
            All_Product.Cart_Data(customerList[i]['cartData']);
          }
        }

        if (!found) {
          print("Not found!");
        }
        break;

      case 4:
        exit(0);

      default:
        print(" Enter valid choice! ");
        Market.Dashboard();
    }
    choice = Market.Dashboard();
  }
}

class All_Product {
  List ProductList = [
    {"Pr.id": 1, "Pr.name": "Cappucinno", "Price": 479, "Quantity": 1},
    {"Pr.id": 2, "Pr.name": "Espresso", "Price": 850, "Quantity": 1},
    {"Pr.id": 3, "Pr.name": "BRU Gold Coffee", "Price": 970, "Quantity": 1},
    {"Pr.id": 4, "Pr.name": "Latte", "Price": 800, "Quantity": 1},
    {"Pr.id": 5, "Pr.name": "Americano", "Price": 1000, "Quantity": 1},
  ];

  List cartList = [];

  List Materials() {
    int Choose_Product = 0;
    int Choose_Product_Quantity = 0;
    Map map = {};
    for (int i = 0; i < ProductList.length; i++) {
      print(
          "${ProductList[i]['Pr.id']}.${ProductList[i]['Pr.name']} (${ProductList[i]['Price']}Rs)");
    }
  
    stdout.write("Enter your product : ");
    Choose_Product = int.parse(stdin.readLineSync()!);

    if (Choose_Product <= 10 && Choose_Product > 0  ) {
      map['Pr.id'] = ProductList[Choose_Product - 1]['Pr.id'];
      map['Pr.name'] = ProductList[Choose_Product - 1]['Pr.name'];
      map['Price'] = ProductList[Choose_Product - 1]['Price'];

      stdout.write("Enter the number of Quantity : ");
      Choose_Product_Quantity = int.parse(stdin.readLineSync()!);

      map['Quantity'] = Choose_Product_Quantity;

      cartList.add(map);

      stdout.write("You want to add moreee ? [y/n] : ");
      String Repeat = stdin.readLineSync()!;

      if (Repeat == 'y') {
        Materials();
      }
    } else {
      print("Plz enter the valid option!");
      Materials();
    }

    return cartList;
  }

  static Cart_Data(List list) {
    double Discount = 0;
    double Total_Amount = 0;
    double Discount_Amount = 0;
    double Payable_Amount = 0;

    print('\n-------- Customer cart Details  --------\n');

    for (int i = 0; i < list.length; i++) {
      Total_Amount +=
          ((list[i]['Price'] as int) * (list[i]['Quantity'] as int));
      print(
          "Name : ${list[i]['Pr.name']}, Price : ${list[i]['Price']}Rs , Quantity : ${list[i]['Quantity']}");
    }

    if (Total_Amount >= 500 && Total_Amount <= 1510) {
      Discount = 10;
    } else if (Total_Amount > 1510 && Total_Amount <= 3510) {
      Discount = 20;
    } else if (Total_Amount > 3510 && Total_Amount <= 6510) {
      Discount = 25;
    } else if (Total_Amount > 6510) {
      Discount = 30;
    }

    Discount_Amount = Total_Amount * (Discount / 100);
    Payable_Amount = Total_Amount - Discount_Amount;
    print("\n Total Amount ->  $Total_Amount");
    print("\n Discount Amount ->  $Discount_Amount  ($Discount%)");
    print("\n Payable Amount ->  $Payable_Amount");
  }
}

class Customer extends All_Product {
  late int _Id;
  late String _Name;
  late String _Contact_no;

  Input() {

    stdout.write("Enter The Customer Id : ");
    _Id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter customer name : ");
    _Name = stdin.readLineSync()!;
    stdout.write("Enter customer contact number : ");
    _Contact_no = stdin.readLineSync()!;
  }

  Output() {
    print("\nCustomer id : $_Id");
    print("Customer name : $_Name");
    print("Customer contact number : $_Contact_no");
  }

  TakeId() => _Id;
}

class Market {
  List customer_data = [];

  static int Dashboard() {
    int choice;

    print("Press 1 for Add new customer");
    print("Press 2 for All customer data");
    print("Press 3 for Search existed customer");
    print("Press 4 for Exit");
   

    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);

    return choice;
  }
}
