import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_endpoint/products.dart';

class ProductDetails extends StatefulWidget {
  final String productBrand;
  final String productId;
  final String productName;
  final String productCost;
  final String productCategory;
  final String productColor;
  final String productMaterial;
  final String productImage;
  final String productAvailability;
  final String productLaunchDate;
  final String productSummary;

  const ProductDetails({Key key, this.productId, this.productName, this.productCost, this.productCategory, this.productColor, this.productMaterial, this.productImage, this.productAvailability, this.productLaunchDate, this.productSummary, this.productBrand}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text(widget.productName),
        backgroundColor : Colors.green,
      ),
      body : ListView(
        children: [
          new Container(
               height : 300,
             child : GridTile(
               child: Container(
                 color : Colors.white,
                 child : Image.asset(widget.productImage)
               ),
               footer : new Container(
                 color : Colors.white70,
                 child : ListTile(
                   leading : Text(widget.productName,
                   style : TextStyle(
                     fontFamily: 'Tinos',
                     fontSize : 20,
                   ),),
                   title : Row(
                     children: [
                       SizedBox(width : 10),
                       Expanded(
                         child: Text ("Rs. " + widget.productCost + " /-",
                         style : TextStyle (
                           color : Colors.redAccent,
                         ),),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
          ),
          Row(
            children:[
              Expanded(
                child : MaterialButton(
                  height: 60,
                  child : Row(
                    children: [
                      Expanded(child: Text('Quantity',
                        style : TextStyle(
                          fontSize : 19,
                        ),
                      )),
                      Expanded(
                        child : Icon(Icons.arrow_drop_down,
                        color : Colors.white),
                      ),
                    ],
                  ),
                  color : Colors.grey,
                  textColor : Colors.white,
                  elevation : 1.0,
                  onPressed:(){
                        showDialog(context : context , builder: (context){
                          return  new AlertDialog(
                            title : Text('Quantity'),
                            content : Text('Enter Quantity'),
                            actions:[
                              MaterialButton(
                                child : Text('Close'),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        }
                        );
                  },
                ),
              ),
            ],
          ),
          Row(
            children:[
              Expanded(
                child : MaterialButton(
                  height : 60,
                  child : Row(
                    children: [
                      Expanded(child: Center(child: Text('Buy Now',
                      style : TextStyle(
                        fontSize : 19,
                      ),
                      )),),

                    ],
                  ),
                  color : Colors.red,
                  textColor : Colors.white,
                  elevation : 1.0,
                  onPressed:(){

                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color : Colors.red,
                onPressed:(){

                }
              ),
              IconButton(
                  color : Colors.red,
                  icon: Icon(Icons.favorite_border),
                  onPressed:(){

                  }
              ),

            ],
          ),
          Divider(),


          SingleChildScrollView(
            child: Container(
              child : Column(
                children : [
                  SizedBox(height: 10,),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Product Name  ',
                        style : TextStyle (
                          fontSize: 16,
                          fontWeight : FontWeight.bold,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.productName,
                        style : TextStyle (
                          color : Colors.grey[700],
                          fontSize : 16,
                        ),
                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Cost                  ',
                          style : TextStyle (
                            fontSize: 16,
                            fontWeight : FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("  Rs. "+widget.productCost+ " /-",
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),

                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Product ID       ',
                          style : TextStyle (
                            fontSize: 16,
                            fontWeight : FontWeight.bold,
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("  "+widget.productId,
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),
                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Brand               ',
                          style : TextStyle (
                            fontSize: 16,
                            fontWeight : FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("  "+widget.productBrand,
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),


                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Category          ',
                          style : TextStyle (
                            fontSize: 16,
                            fontWeight : FontWeight.bold,
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(" "+widget.productCategory,
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),

                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Color                ',
                          style : TextStyle (
                            fontWeight : FontWeight.bold,
                            color : Colors.black,
                            fontSize : 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("  "  +widget.productColor,
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),

                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Material             ',
                          style : TextStyle (
                            fontWeight : FontWeight.bold,
                            color : Colors.black,
                            fontSize : 16,
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.productMaterial,
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),
                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Availability        ' ,
                          style : TextStyle (
                            fontWeight : FontWeight.bold,
                            color : Colors.black,
                            fontSize : 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width : 245,
                          child: Text(widget.productAvailability,
                            overflow: TextOverflow.fade,
                            softWrap : true,
                            style : TextStyle (
                              color : Colors.grey[700],
                              fontSize : 16,
                            ),
                          ),
                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Launch Date      ',
                          style : TextStyle (
                            fontWeight : FontWeight.bold,
                            color : Colors.black,
                            fontSize : 16,
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.productLaunchDate,
                          style : TextStyle (
                            color : Colors.grey[700],
                            fontSize : 16,
                          ),
                        ),
                      ),

                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Description     ',
                          style : TextStyle (
                            fontWeight: FontWeight.bold,
                            color : Colors.black,
                            fontSize : 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width : 245,
                         // direction: Axis.vertical,
                          //fit : FlexFit.tight,
                         // fit : FlexFit.loose,
                              child : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widget.productSummary,
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  style : TextStyle (

                                    color : Colors.grey[700],
                                    fontSize : 16,
                                  ),
                                ),
                              ),

                        ),
                      ),

                    ],

                  ),

                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Similar Products',
                    style : TextStyle(
                      fontSize:18,
                      fontFamily: 'Tinos',
                    ),),
                  ),
                  Container(
                    height : 360,
                    child : SimilarProducts(),
                  ),

                ] ,

              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [
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
    {"productId":"6",
      "productName":"Fantastic Granite Tuna",
      "productCost":"599.00",
      "productBrand":"Keyboard",
      "productCategory":"Electronics",
      "productColor":"azure",
      "productMaterial":"Granite",
      "productImage":"assets/tuna.jpg",
      "productAvailability":"Germany",
      "productLaunchDate":"2020-10-26T14:32:53.588Z",
      "productSummary":"We need to copy the open-source XSS monitor!"
    },
    {"productId":"7",
      "productName":"Unbranded Concrete Chair",
      "productCost":"569.00",
      "productBrand":"Mouse",
      "productCategory":"Books",
      "productColor":"olive",
      "productMaterial":"Frozen",
      "productImage":"assets/olivechair.jpg",
      "productAvailability":"Nepal",
      "productLaunchDate":"2020-08-25T19:54:50.022Z",
      "productSummary":"The SAS interface is down, override the digital capacitor so we can generate the EXE feed!"
    },
    {"productId":"8",
      "productName":"Licensed Fresh Hat",
      "productCost":"542.00",
      "productBrand":"Gloves",
      "productCategory":"Outdoors",
      "productColor":"gold",
      "productMaterial":"Cotton",
      "productImage":"assets/goldhat.jpg",
      "productAvailability":"Vietnam",
      "productLaunchDate":"2020-12-04T06:29:55.446Z",
      "productSummary":"Use the optical XSS capacitor, then you can reboot the neural pixel!"
    },
    {"productId":"9",
      "productName":"Tasty Fresh Ball",
      "productCost":"501.00",
      "productBrand":"Salad",
      "productCategory":"Baby",
      "productColor":"magenta",
      "productMaterial":"Wooden",
      "productImage":"assets/magentaball.jpg",
      "productAvailability":"Kiribati",
      "productLaunchDate":"2020-07-18T00:30:26.835Z",
      "productSummary":"The THX protocol is down, connect the cross-platform card so we can copy the THX driver!"
    },
    {"productId":"10",
      "productName":"Generic Granite Gloves",
      "productCost":"491.00",
      "productBrand":"Soap",
      "productCategory":"Garden",
      "productColor":"plum",
      "productMaterial":"Wooden",
      "productImage":"assets/plumglove.jpg",
      "productAvailability":"Nigeria",
      "productLaunchDate":"2020-10-16T06:49:43.345Z",
      "productSummary":"Try to navigate the SSL circuit, maybe it will override the open-source capacitor!"
    },
    {"productId":"11",
      "productName":"Intelligent Plastic Ball",
      "productCost":"113.00",
      "productBrand":"Tuna",
      "productCategory":"Baby",
      "productColor":"mint green",
      "productMaterial":"Metal",
      "productImage":"assets/mintball.jpg",
      "productAvailability":"Palau",
      "productLaunchDate":"2020-05-27T08:59:25.208Z",
      "productSummary":"hacking the sensor won't do anything, we need to bypass the open-source SSL microchip!"
    },
    {"productId":"12",
      "productName":"Fantastic Wooden Shirt",
      "productCost":"855.00",
      "productBrand":"Pizza",
      "productCategory":"Automotive",
      "productColor":"red",
      "productMaterial":"Rubber",
      "productImage":"assets/redshirt.jpg",
      "productAvailability":"Papua New Guinea",
      "productLaunchDate":"2020-06-16T05:36:26.139Z",
      "productSummary":"If we parse the feed, we can get to the SAS array through the open-source XML firewall!"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context ,int index){
          return SingleProduct(
            productBrand: product_list[index]['productBrand'],
            productName: product_list[index]['productName'],
            productId: product_list[index]['productId'],
            productCost: product_list[index]['productCost'],
            productCategory: product_list[index]['productCategory'],
            productColor: product_list[index]['productColor'],
            productMaterial: product_list[index]['productMaterial'],
            productImage: product_list[index]['productImage'],
            productAvailability: product_list[index]['productAvailability'],
            productLaunchDate: product_list[index]['productLaunchDate'],
            productSummary: product_list[index]['productSummary'],



          );
        });
  }
}
