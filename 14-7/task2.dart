import 'dart:io';

void main() {
  const String uname = 'tops';
  const String pass = '1234';
  int totalBill = 0;

  var item;

  print('Enter username');
  String uname2 = stdin.readLineSync().toString();

  print('Enter password');
  String pass2 = stdin.readLineSync().toString();

  if (uname2 == uname && pass2 == pass) {
    print("\nLogin successful!\n");

    stdout.write("Enter Table Number: ");
    int tableNumber = int.parse(stdin.readLineSync().toString());

    List<String> orderedItems = [];
    while (true) {
      print("\n--- Menu ---");
      print("1. Pizza - ₹120");
      print("2. Burger - ₹90");
      print("3. Sandwich - ₹100");
      print("4. Pav Bhaji - ₹130");
      print("5. Chole Bhature - ₹140");
      print("6. Vadapav - ₹80");
      print("0. Exit and Complete Order");

      stdout.write("Enter your Choice: ");
      int choice = int.parse(stdin.readLineSync().toString());

      switch (choice) {
        case 1:
          totalBill += 120;
          orderedItems.add("Pizza");
          print("Pizza Added!");
          break; // Important: 'break' prevents execution from falling through to the next case

        case 2:
          totalBill += 90;
          orderedItems.add("Burger");
          print("Burger Added!");
          break;

        case 3:
          totalBill += 100;
          orderedItems.add("Sandwich");
          print("Sandwich Added!");
          break;

        case 4:
          totalBill += 130;
          orderedItems.add("Pav Bhaji");
          print("Pav Bhaji Added!");
          break;

        case 5:
          totalBill += 140;
          orderedItems.add("Chole Bhature");
          print("Chole Bhature Added!");
          break;

        case 6:
          totalBill += 80;
          orderedItems.add("Vadapav");
          print("Vadapav Added!");
          break;

        case 0:
          print("\n--- Order Summary ---");
          print("Table Number: $tableNumber");
          print("Items Ordered:");
          // Iterate and print each ordered item for clear display
          for (String item in orderedItems) {
            print("- $item");
          }
          print("Total Bill: ₹$totalBill");
          var file = File("E://aa.txt");
          String data =
              "Table No:$tableNumber \n item:$orderedItems \n Bill:$totalBill";
          file.writeAsString(data);
          print("Success");
          return;

        default:
          print("Invalid choice. Please enter a number from the menu.");
          break;
      }
    }
  } else {
    print('Invalid');
  }
}
