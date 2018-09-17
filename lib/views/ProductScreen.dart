import 'package:flut_store/model/model.dart';
import 'package:flut_store/utils/resources.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget{
  final Product product;
  ProductScreen(this.product);

  @override
  _ProductScreenState createState() => new _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>{
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: new AppBar(title: Text(widget.product.name,)),
        body: new SingleChildScrollView(
          child:Column(
            children: <Widget>[
              SizedBox(
                height: deviceSize.height / 4,
              ),

              _mainCard(widget.product),
              _imagesCard(widget.product, deviceSize),
              _descCard(widget.product),
              Container(
                  height: 60.0,
                  width: deviceSize.width,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      gradient: LinearGradient(begin: AlignmentDirectional.bottomCenter,end: AlignmentDirectional.topCenter,colors: [Colors.yellow[600],Colors.yellow[500],Colors.yellow[200]])
                  ),
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Add to ",style: TextStyle(fontSize: 18.0),),
                        Icon(Icons.add_shopping_cart)
                      ],
                    ),
                    onPressed: (){
                      setState(() {
                        cart.add(widget.product);

                      });

                      Duration(seconds: 1);
                      Navigator.pop(context);
                      },
                  )
              )

            ],
          ),
        )
    );
  }

  Widget _mainCard(Product product) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              product.name,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(product.name.substring(0,product.name.indexOf(" "))),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.star,color: Colors.cyan,),
                    Text(" 4.0")
                  ],

                ),
                Text(
                  product.price,
                  style: TextStyle(
                      color: Colors.orange.shade800,
                      fontWeight: FontWeight.w700,
                      fontSize: 25.0),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
  Widget _imagesCard(Product product,Size deviceSize) => SizedBox(
    height: deviceSize.height / 5,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Card(
        elevation: 2.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(product.pic),
          ),
        ),
      ),
    ),
  );

  Widget _descCard(Product product) => Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Description",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              product.description,
              style:
              TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    ),
  );
}