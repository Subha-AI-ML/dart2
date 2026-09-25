

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double totalPrice() {
    return price * quantity;
  }
}

void main() {
  Product p = Product("Laptop", 50000, 2);

  print("Product: ${p.name}");
  print("Total Price: ${p.totalPrice()}");
}