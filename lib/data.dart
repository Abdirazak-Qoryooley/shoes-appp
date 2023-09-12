class data {
  late final String image;
  late final String name;
  late final String price;

  data({required this.image, required this.name, required this.price});
}

List<data> getadata = [
  data(image: 'images/nike.png', name: 'Nike-Zoom-Moc', price: '\$100'),
  data(image: 'images/3.png', name: 'Nike-Air-Max', price: '\$90'),
];

List<data> getanother = [
  data(image: 'images/for1.png', name: 'shoes women', price: '\$50'),
  data(image: 'images/for2.png', name: 'shoes girls', price: '\$99'),
  data(image: 'images/nike.png', name: 'Nike-Zoom-Moc', price: '\$100'),
  data(image: 'images/nike.png', name: 'Nike-Zoom-Moc', price: '\$100'),
];

List<data> get2 = [
  data(image: 'images/aj.png', name: 'Aj_1_', price: '\$70'),
  data(image: 'images/2.png', name: 'Nike-Huarache', price: '\$80'),
  data(image: 'images/nike.png', name: 'Nike-Zoom-Moc', price: '\$100'),
  data(image: 'images/6.png', name: 'Air-Jordan', price: '\$120'),
];
