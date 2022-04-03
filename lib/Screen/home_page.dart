import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_task/models/product.dart';
import 'package:test_task/productTile.dart';

import '../controller/product_controller.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  final ProductController productController=Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(
              child: SearchBar(),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Obx(() {
                if(productController.isLoading.value)
                  return CircularProgressIndicator();
                return StaggeredGridView.countBuilder(
                    crossAxisCount: 3,
                    itemCount: productController.listOfProducts.length,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    itemBuilder: (context, index) {
                      return ProductTile(
                          productController.listOfProducts[index]);
                    },
                    staggeredTileBuilder: (index) =>
                    index % 10 == 0
                        ? StaggeredTile.count(2, 2)
                        : StaggeredTile.count(1, 1));

              }
              ),
            )
          ],
        ));
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search in Swipexyz",
        hintStyle: TextStyle(color: Color(0xff94959d)),
        prefixIcon: Icon(Icons.search, color: Color(0xff94959d), size: 30.0),
        //disabledBorder:InputBorder.none,
        border: InputBorder.none,
        fillColor: Colors.white,
      ),
    );
  }
}
