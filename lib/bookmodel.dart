class Book {
  String imageUrl;
  String title;
  String author;

  Book({
    this.imageUrl,
    this.title,
    this.author,
  });
}

final List<Book> book = [
 
  Book(
      imageUrl: 'assets/Fatherhood.png',
      title: 'FatherHood',
      author: 'Marcus Berkmann'),
  Book(
      imageUrl: 'assets/How To Be The Best In Time And Space.png',
      title: 'The Time Travellers',
      author: 'Stride Lottie'),
  Book(
      imageUrl: 'assets/The Zoo.png',
      title: 'The Zoo',
      author: 'Christopher Wilson'),
  Book(
      imageUrl: 'assets/In A Land Of Paper Gods.png',
      title: 'In A Land Of Paper Gods',
      author: 'Rebecca Mackenzie'),
  Book(
      imageUrl: 'assets/Tattletale.png',
      title: 'Tattletale',
      author: 'Sarah J.'),
  Book(
      imageUrl: 'assets/The Fatal Tree.png',
      title: 'The Fatal Tree',
      author: 'Jake Amott'),
  Book(imageUrl: 'assets/Day Four.png', title: 'Day Four', author: 'Sarah'),
  Book(
      imageUrl: 'assets/D2D.png',
      title: 'Door To Door',
      author: 'Edward Humes'),
];
