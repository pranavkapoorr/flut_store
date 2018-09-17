class Product {
  final String name;
  final String price;
  final String pic;
  final String description;
  Product(this.name,this.pic,this.price,this.description);
}
List<Product> products = [
  new Product("Iphone 8", "lib/assets/iphone 8.png", "500 £","This is Iphone 8 launched in 2017 availabe in 4 colors"),
  new Product("Honor 10", "lib/assets/honor 10.png", "300 £","This is Honor 10 phone android based phone"),
  new Product("Iphone 6s", "lib/assets/iphone 6s.png", "400 £","This is iphone 6s, used to be good but now outdated"),
  new Product("Oppo f7", "lib/assets/oppo f7.png", "450 £","This is Oppo phone, very high demand as it looks like iphone X"),
  new Product("Iphone 8 Plus", "lib/assets/iphone 8.png", "800 £","Iphone 8 plus is good phone with large display and very good camera"),
];
