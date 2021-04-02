import 'package:flutter/material.dart';


class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var cart_products=[
    {"productId":"1",
      "productName":"Generic Metal Bacon",
      "productCost":"562.00",
      "productBrand":"Sausages",
      "productCategory":"Industrial",
      "productColor":"fuchsia",
      "productMaterial":"Frozen",
      "productImage":"assets/baconpress.jpg",
      "productAvailability":"Oman",
      "productLaunchDate":"2020-12-23T15:23:32.575Z",
      "productSummary":"overriding the hard drive won't do anything, we need to program the optical THX pixel!"
    },
    {"productId":"2",
      "productName":"Handmade Frozen Hat",
      "productCost":"486.00",
      "productBrand":"Mouse",
      "productCategory":"Garden",
      "productColor":"cyan",
      "productMaterial":"Concrete",
      "productImage":"assets/cyanhat.jpg",
      "productAvailability":"China",
      "productLaunchDate":"2020-03-20T15:34:58.031Z",
      "productSummary":"Use the online SMTP matrix, then you can generate the cross-platform array!"
    },
    {"productId":"3",
      "productName":"Sleek Fresh Bike",
      "productCost":"775.00",
      "productBrand":"Mouse",
      "productCategory":"Movies",
      "productColor":"black",
      "productMaterial":"Granite",
      "productImage":"assets/bike.jpg",
      "productAvailability":"Cuba",
      "productLaunchDate":"2021-01-18T03:33:59.736Z",
      "productSummary":"The HDD driver is down, index the mobile sensor so we can navigate the SMS card!"
    },
    {"productId":"4",
      "productName":"Awesome Fresh Towels",
      "productCost":"221.00",
      "productBrand":"Towels",
      "productCategory":"Electronics",
      "productColor":"salmon",
      "productMaterial":"Concrete",
      "productImage":"assets/salmontowel.jpg",
      "productAvailability":"Malaysia",
      "productLaunchDate":"2020-10-20T04:21:25.740Z",
      "productSummary":"Try to transmit the THX protocol, maybe it will index the virtual circuit!"
    },
    {"productId":"5",
      "productName":"Tasty Cotton Pizza",
      "productCost":"190.00",
      "productBrand":"Table",
      "productCategory":"Clothing",
      "productColor":"mint green",
      "productMaterial":"Steel",
      "productImage":"assets/mintpizza.jpg",
      "productAvailability":"Guernsey",
      "productLaunchDate":"2020-12-15T13:39:15.188Z",
      "productSummary":"If we quantify the pixel, we can get to the HTTP protocol through the redundant TCP monitor!"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart_products.length,
      itemBuilder : (context,index){
        return SingleCartProduct(
          cartproductName: cart_products[index]['productName'],
          cartproductId: cart_products[index]['productId'],
          cartproductCategory: cart_products[index]['productCategory'],
          cartproductColor: cart_products[index]['productColor'],
          cartproductSummary: cart_products[index]['productSummary'],
          cartproductCost: cart_products[index]['productCost'],
          cartproductBrand: cart_products[index]['productBrand'],
          cartproductMaterial: cart_products[index]['productMaterial'],
          cartproductImage: cart_products[index]['productImage'],
          cartproductAvailability: cart_products[index]['productAvailability'],
          cartproductLaunchDate: cart_products[index]['productLaunchDate'],

        );
    }
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final String cartproductId;
  final String cartproductName;
  final String cartproductCost;
  final String cartproductBrand;
  final String cartproductCategory;
  final String cartproductColor;
  final String cartproductMaterial;
  final String cartproductImage;
  final String cartproductAvailability;
  final String cartproductLaunchDate;
  final String cartproductSummary;

  const SingleCartProduct({Key key, this.cartproductId, this.cartproductName, this.cartproductCost, this.cartproductBrand, this.cartproductCategory, this.cartproductColor, this.cartproductMaterial, this.cartproductImage, this.cartproductAvailability, this.cartproductLaunchDate, this.cartproductSummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration : BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height : 150,
        child :ListTile(
          leading: Image.asset(cartproductImage,
            width : 80,
            height : 80,

          ),
          title: Text(cartproductName),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding : EdgeInsets.all(5),
                    child : Text('Brand:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(cartproductBrand,
                    style : TextStyle(
                      color: Colors.red,
                    ),
                    ),
                  ),




                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),

                    child : Text('Color:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(cartproductColor,
                      style : TextStyle(
                        color: Colors.red,
                      ),

                    ),

                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child : Text('Rs. ' + cartproductCost,
                        style : TextStyle(
                          fontSize : 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
  void addQuantity(){

  }
}
