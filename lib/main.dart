import 'package:api_endpoint/cart.dart';
import 'package:api_endpoint/products.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
       Widget image_carousel  = new Container(
         height : 200,
         child : Carousel(
           boxFit:  BoxFit .cover,
           images : [
             AssetImage('assets/redshirt.jpg'),
             AssetImage('assets/olivechair.jpg'),
             AssetImage('assets/salmontowel.jpg'),
             AssetImage('assets/woodenshoe.jpg'),
             AssetImage('assets/rubberkeyboard.jpg'),
             AssetImage('images1/granitepant.jpg'),



           ],
           autoplay : true,
           animationCurve: Curves.fastOutSlowIn,
           animationDuration: Duration(seconds: 1),
           dotSize: 5,
           dotBgColor: Colors.transparent,

         ),
       );
    return Scaffold(
      appBar : AppBar(
        title : Text('API Endpoint'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 1.0,
        actions: [
          IconButton(
            icon : Icon(Icons.search),
            onPressed: (){},
          color : Colors.white,),
          IconButton(
            icon : Icon(Icons.shopping_cart),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            },
            color : Colors.white,),


        ],
      ),
      body : ListView(
        children: [
          image_carousel,

          Padding(
            padding : const EdgeInsets.all(25),
            child : Text ('Our Products',
              style : TextStyle (fontSize : 24,
              fontFamily : 'Tinos'),
            ),

            // Grid View
          ),
          Container(
            //color: Colors.grey,
            height : 450,
            child : Products(),
          ),
        ],
      ),
      drawer : new Drawer(
        child : ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text( "User"),
              accountEmail:Text ('user@gmail.com'),
            currentAccountPicture:  GestureDetector(
              child : CircleAvatar(
                backgroundColor: Colors.grey,
                child : Icon(Icons.person,
                color : Colors.white,),
              ),
            ),
            decoration : BoxDecoration(
              color: Colors.red,
            ),),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));     }   ,

              child: ListTile(
                title : Text ('Home'),
                leading : Icon (Icons.home,
                color : Colors.red,),

              ),
            ),
            InkWell(
              onTap: (){     }   ,

              child: ListTile(
                title : Text ('My Account'),
                leading : Icon (Icons.person,
                  color : Colors.red,),

              ),
            ),
            InkWell(
              onTap: (){     }   ,

              child: ListTile(
                title : Text ('My Orders'),
                leading : Icon (Icons.shopping_basket,
                  color : Colors.red,),

              ),
            ),
            InkWell(
              onTap: (){                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              }   ,

              child: ListTile(
                title : Text ('Cart'),
                leading : Icon (Icons.shopping_cart,
                  color : Colors.red,),

              ),
            ),
            InkWell(
              onTap: (){     }   ,

              child: ListTile(
                title : Text ('Favorites'),
                leading : Icon (Icons.favorite,
                  color : Colors.red,),

              ),
            ),

            Divider (),

            InkWell(
              onTap: (){     }   ,

              child: ListTile(
                title : Text ('Settings'),
                leading : Icon (Icons.settings,
                  color : Colors.blue,
                    ),

              ),
            ),
            InkWell(
              onTap: (){     }   ,

              child: ListTile(
                title : Text ('About API Endpoint'),
                leading : Icon (Icons.help_outlined,
                  ),

              ),
            ),




          ],
        ),
      ),
      //body : Container(),
    );
  }
}
