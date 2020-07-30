import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_page/bookmodel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 480,
              //      color: Colors.red,
              child: Stack(
                children: [
                  Container(
                    height: 305,
                    decoration: BoxDecoration(
                      color: Color(0xff5ABD8C),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(300, 300),
                        bottomRight: Radius.elliptical(300, 300),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Our Topp Picks',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              Icon(
                                Icons.menu,
                                size: 25,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CarouselSlider.builder(
                          height: 334,
                          viewportFraction: .48,
                          enlargeCenterPage: true,
                          itemCount: book.length - 5,
                          realPage: 0,
                          itemBuilder: (BuildContext context, int index) {
                            Book books = book[index];
                            return Container(
                              width: 150,
                              //  color: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    child: Image.asset(
                                      books.imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(books.title),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(books.author)
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Bestsellers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              //  color: Colors.red,
              height: 210,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 15),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    Book books = book[index + 2];
                    return Container(
                      width: 150,
                      height: 210,
                      //  color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            width: 100,
                            child: Image.asset(
                              books.imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            books.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'by ${books.author}',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Genres',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 210,
              //   color: Colors.red,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff1C4A7E),
                    ),
                    width: 280,
                    child: Image.asset('assets/Group 13.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffC65135),
                    ),
                    width: 280,
                    child: Image.asset('assets/Group 13.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Recently Viewed',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              //  color: Colors.red,
              height: 210,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  Book books = book[index + 5];
                  return Container(
                    width: 150,
                    height: 210,
                    //  color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          child: Image.asset(
                            books.imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          books.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'by ${books.author}',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Monthly Newsletter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
  
              padding: EdgeInsets.all(20),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xffefefef),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Receive our monthly newsletter and receive updates',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[350]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 5),
                            child: Text(
                              'Name',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[350]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 5),
                            child: Text(
                              'Email Address',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130, left: 240),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff5ABD8C),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          height: 60,
          color: Color(0xff5ABD8C),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Text(
                    'Wishlist',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    'Cart',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
