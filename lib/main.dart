import 'package:base_response_example/data/models/product_model.dart';
import 'package:base_response_example/data/sources/api/api_service.dart';
import 'package:flutter/material.dart';

import 'data/models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UserModel? user;
  List<ProductModel>? products;

  @override
  void initState() {
    fetchSingle();
    fetchArray();
    super.initState();
  }

  fetchSingle() async {
    APIService().fetchSingleData().then((data) {
      setState(() {
        user = data?.data;
        // ignore: avoid_print
        print(user);
      });
    });
  }

  fetchArray() async {
    APIService().fetchArrayData().then((data) {
      setState(() {
        products = data?.data;
        // ignore: avoid_print
        print(products);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
