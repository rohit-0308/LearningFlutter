class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro Max",
      desc: "Apple iPhone 12th Generation",
      price: 120000,
      color: '#35505A',
      image:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstore.storeimages.cdn-apple.com%2F4982%2Fas-images.apple.com%2Fis%2Fiphone-12-blue-select-2020%3Fwid%3D940%26hei%3D1112%26fmt%3Dpng-alpha%26qlt%3D80%26.v%3D1604343704000&imgrefurl=https%3A%2F%2Fwww.apple.com%2Fshop%2Fbuy-iphone%2Fiphone-12%2F6.1-inch-display-64gb-blue-unlocked&tbnid=c8o3P3ld8pXOPM&vet=12ahUKEwiIudHdrL7vAhVUXX0KHQe4CecQMygBegUIARCGAg..i&docid=JTLWolBu0o9wcM&w=940&h=1112&q=iphone%2012&ved=2ahUKEwiIudHdrL7vAhVUXX0KHQe4CecQMygBegUIARCGAg',
    ),
    Item(
      id: 2,
      name: "iPhone 12 Pro Max",
      desc: "Apple iPhone 12th Generation",
      price: 120000,
      color: '#35505A',
      image:
          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstore.storeimages.cdn-apple.com%2F4982%2Fas-images.apple.com%2Fis%2Fiphone-12-blue-select-2020%3Fwid%3D940%26hei%3D1112%26fmt%3Dpng-alpha%26qlt%3D80%26.v%3D1604343704000&imgrefurl=https%3A%2F%2Fwww.apple.com%2Fshop%2Fbuy-iphone%2Fiphone-12%2F6.1-inch-display-64gb-blue-unlocked&tbnid=c8o3P3ld8pXOPM&vet=12ahUKEwiIudHdrL7vAhVUXX0KHQe4CecQMygBegUIARCGAg..i&docid=JTLWolBu0o9wcM&w=940&h=1112&q=iphone%2012&ved=2ahUKEwiIudHdrL7vAhVUXX0KHQe4CecQMygBegUIARCGAg',
    ),
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
