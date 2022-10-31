import 'package:flutter/material.dart';
import 'package:jewallery_shop_ui/model/product_info.dart';

class HomeP extends StatelessWidget {
  final a = ProductInfo.generatedProductList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey Marvin',
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Let\'s Make A Bid!',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notification_add_outlined,
                          size: 35,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: TextFormField(
                              style: TextStyle(color: Color(0xff8A8A8E)),
                              decoration: InputDecoration(
                                  hintText: 'Search Items',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide: BorderSide(
                                        color: Color(0xff8A8A8E),
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      borderSide:
                                          BorderSide(color: Color(0xff8A8A8E))),
                                  prefixIcon: Icon(
                                    Icons.search_outlined,
                                    color: Color(0xff8A8A8E),
                                  ))),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.assessment,
                            size: 66,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Catagories',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                        height: 150,
                        color: Color.fromARGB(255, 253, 253, 252),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 130,
                                width: 150,
                                color: Color.fromARGB(255, 231, 230, 223),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      a[index].image,
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 140,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      a[index].name,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (_, index) => SizedBox(
                                  width: 10,
                                ),
                            itemCount: a.length)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trending Auctions',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      // height: 200,
                      // width: 400,
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  // childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemCount: a.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 218, 217, 217),
                                  borderRadius: BorderRadius.circular(0)),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        a[index].image,
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: double.infinity,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2, left: 5),
                                          child: Text(
                                            a[index].name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text('Current Bid'),
                                                Text(
                                                  '\$' + a[index].price,
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: Center(
                                                child: Text(
                                                  'Bid Now',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.orange,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.attractions),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
                backgroundColor: Colors.black),
          ])),
    );
  }
}
