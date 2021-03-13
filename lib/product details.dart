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
                       SizedBox(width : 20),
                       Text ("Rs. " + widget.productCost + " /-",
                       style : TextStyle (
                         color : Colors.redAccent,
                       ),),
                     ],
                   ),
                 ),
               ),
             ),
          ),
          SingleChildScrollView(
            child: Container(
              child : Column(
                children : [
                  Center(child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Product Details",
                      style : TextStyle(
                        fontSize : 24,
                        fontWeight: FontWeight.bold,
                        fontFamily : 'Tinos',

                      ),
                    ),
                  )),
                  SizedBox(height: 10,),
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
                        child: Text('Description        ',
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
                              child : Text(widget.productSummary,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style : TextStyle (

                                  color : Colors.grey[700],
                                  fontSize : 16,
                                ),
                              ),

                        ),
                      ),

                    ],

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
