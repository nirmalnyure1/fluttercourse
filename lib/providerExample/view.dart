import 'package:flutter/material.dart';
import 'package:professional_class/providerExample/controller.dart';
import 'package:professional_class/providerExample/productUi.dart';
import 'package:provider/provider.dart';

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Controller(),
        ),
      ],
      child: ViewPresenter(),
    );
  }
}

class ViewPresenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controllerState = Provider.of<Controller>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Provider',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: controllerState.loading
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: EdgeInsets.all(8.0),
              itemBuilder: (BuildContext context, int index) {
                return ProductUI(
                  product: controllerState.products[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                    color: Colors.green,
                  ),
              itemCount: controllerState.products.length),
    );
  }
}
