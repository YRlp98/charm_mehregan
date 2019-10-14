import 'package:charm_mehregan/Components/Buttons/FilterButtons.dart';
import 'package:charm_mehregan/Components/Sliders/ProductsSlider.dart';
import 'package:charm_mehregan/Theme/Colors.dart';
import 'package:charm_mehregan/Theme/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

// class KFProducts extends KFDrawerContent {
//   KFProducts({Key key});
// }

class ProductsScreen extends KFDrawerContent {
  ProductsScreen({Key key});
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  double horizantalPaddingBy20 = 4.86 * SizeConfig.imageSizeMultiplier;
  double verticalPaddingBy20 = 2.58 * SizeConfig.heightMultiplier;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,

        // Appbar
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          iconTheme: new IconThemeData(color: darkBrownColor),
          leading: new IconButton(
            // Menu icon
            icon: Icon(
              Icons.menu,
            ),
            onPressed: widget.onMenuPressed,
          ),

          // Title
          title: new Text(
            'محصولات',
            style: TextStyle(
                fontFamily: 'Vazir',
                fontWeight: FontWeight.bold,
                fontSize: 2 * SizeConfig.textMultiplier,
                color: darkBrownColor),
          ),

          // Search Icon
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),

        // Body
        body: new ListView(
          children: <Widget>[
            // FilterButtons
            new Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizantalPaddingBy20,
                  vertical: verticalPaddingBy20),
              child: new FilterButtonsUse(),
            ),

            // SlideShow
            new Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizantalPaddingBy20,
              ), //20
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Directionality(
                    textDirection: TextDirection.rtl,
                    child: new Text(
                      'محصولات ویژه',
                      style: TextStyle(
                          fontFamily: 'Vazir',
                          fontWeight: FontWeight.bold,
                          fontSize: 1.67 * SizeConfig.textMultiplier,
                          color: Colors.black),
                    ),
                  ),
                  new Center(child: new ProductsSliderCreate())
                ],
              ),
            ),

            new SizedBox(height: 3.87 * SizeConfig.heightMultiplier),

            // Products
            new Container(
              height: 25.83 * SizeConfig.heightMultiplier,
              color: Colors.green,
            )
          ],
        ));
  }
}
