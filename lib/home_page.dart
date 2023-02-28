import 'package:flutter/material.dart';
import 'package:new_proyecto/item.dart';

class MyHomePage extends StatelessWidget {
  final Item item;

  const MyHomePage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(item.name),
    ),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Image.asset(item.image),
            const SizedBox(
              height: 10,
            ),
            Text(
              item.details,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Ingredientes:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),
              textAlign: TextAlign.center,
              ),
            const SizedBox(
              height: 10,
            ),
            Text(
              item.ingredientes.join('\n\n'),
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12,),
              textAlign: TextAlign.center,
            ), 
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Pasos A seguir:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),
              textAlign: TextAlign.center,
              ),
            const SizedBox(
              height: 10,
            ),
            Text(
              item.pasos.join('\n\n'),
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12,),
              textAlign: TextAlign.justify,
            ),
        ],
      ),
    ),
    // floatingActionButton: FloatingActionButton(
    //   child: const Icon(Icons.favorite_border),
    //   onPressed: () async {
    //     Navigator.pop(context, "${item.details} es tu plato favorito.");
    //   },
    // ),
  );
}
}

