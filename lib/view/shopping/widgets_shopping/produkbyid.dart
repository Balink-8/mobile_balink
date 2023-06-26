import 'package:flutter/material.dart';
import 'package:mobile_balink/view_model/product_provider.dart';
import 'package:provider/provider.dart';

class ProductById extends StatefulWidget {
  const ProductById({super.key, required this.id});
  final int id;
  @override
  State<ProductById> createState() => _ProductByIdState();
}

class _ProductByIdState extends State<ProductById> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<ProductProvider>(context, listen: false)
        .getProductById(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
      final product = productProvider.listProduct;
      if (product == null) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Scaffold();
      }
    });
  }
}
