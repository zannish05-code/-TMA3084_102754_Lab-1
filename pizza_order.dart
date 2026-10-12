import 'dart:io';

void main() {
  String again = 'y';
  while (again.toLowerCase() == 'y') {
    print('\n===== PIZZA ORDER CALCULATOR =====');
    print('Pizza Prices:');
    print('1. Small  - USD 5');
    print('2. Medium - USD 7');
    print('3. Large  - USD 10');
    stdout.write('\nEnter pizza size (1, 2, or 3): ');
    int? size = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Enter quantity: ');
    int? quantity = int.tryParse(stdin.readLineSync() ?? '');

    if (quantity == null || quantity <= 0) {
      print('Invalid quantity. Please enter a positive number.');
      continue;
    }

    int price = 0;
    String pizzaSize = '';

    switch (size) {
      case 1:
        price = 5;
        pizzaSize = 'Small';
        break;
      case 2:
        price = 7;
        pizzaSize = 'Medium';
        break;
      case 3:
        price = 10;
        pizzaSize = 'Large';
        break;
      default:
        print('Invalid pizza size. Please try again.');
        continue;
    }

    int total = price * quantity;

    print('\n===== ORDER SUMMARY =====');
    print('Pizza Size: $pizzaSize');
    print('Quantity: $quantity');
    print('Total Payment: USD $total');

    stdout.write('\nWould you like to order again? (y/n): ');
    again = (stdin.readLineSync() ?? 'n').trim().toLowerCase();
  }
  print('\nThank you for ordering!');
}
