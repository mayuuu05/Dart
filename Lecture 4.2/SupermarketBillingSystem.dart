
import 'dart:io';

class Supermarket
{
  int? item_number;
  String? item_name;
  int? quantity;
  int? tax;
  int? discount;

  void set()
  {
    stdout.write("Enter the item number : ");
    item_number = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the item name : ");
    item_name = stdin.readLineSync()!;

    stdout.write("Enter the quantity : ");
    quantity = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the tax : ");
    tax = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the discount : ");
    discount = int.parse(stdin.readLineSync()!);
    
  }

  void get()
  {
    stdout.write(" Item Number : $item_number");
    stdout.write(" Item Name   : $item_name");
    stdout.write(" Quantity    : $quantity");
    stdout.write(" Tax         : $tax");
    stdout.write(" Discount    : $discount");
  
  }
}

void main()
{

}
