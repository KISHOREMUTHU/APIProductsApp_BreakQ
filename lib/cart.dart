import 'package:flutter/material.dart';
import 'package:api_endpoint/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
      title : Text('Cart'),
      backgroundColor: Colors.red,
      centerTitle: true,
      elevation: 1.0,
      actions: [
        IconButton(
          icon : Icon(Icons.search),
          onPressed: (){},
          color : Colors.white,),


      ],
    ),
    body : CartProducts(),
    bottomNavigationBar: Container(
      color : Colors.white,
      child : Row(
        children:[
          Expanded(
            child : ListTile(
              title : Text('Total:'),
              subtitle : Text('\$230'),
            ),
          ),
          Expanded(
            child :MaterialButton(
              color : Colors.red,
              child : Text('Check Out',
              style : TextStyle(
                color : Colors.white,
                fontSize: 15,
              ),),
              onPressed:(){

              },
            ),
          ),

        ],
      ),
    ),
    );
  }
}
