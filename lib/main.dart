import 'package:flutter/material.dart';
import 'package:new_proyecto/home_page.dart';
import 'item.dart';

List<Item> seasideList = [
  Item(
      name: 'Platillo 1',
      image: 'assets/images/Burrito_con_jamon.jpg',
      details: "Burrito de desayuno al estilo Denver",
      ingredientes: ["1 envase (10 oz) de queso crema untable PHILADELPHIA Cream Cheese Spread.",
      "2 cucharadas de leche.","1/2 cucharadita de sazón italiana.","8 huevos","1/2 taza de pimiento (pimentón) verde picado y 1/2 taza de cebolla picada", 
      "1 taza de jamón cocido a fuego lento OSCAR MAYER CARVING BOARD Slow Cooked Ham ya picado","8 tortillas de harina (8 pulgs.), calientitas"],
      pasos: ["1.- Mezcla bien el queso crema, la leche y el condimento. Bate bien los huevos y 1/2 taza de la mezcla de queso crema con un batidor de varillas.", 
      "2.- Cocina y revuelve las verduras (vegetales) y el jamón en una sartén grande ya rociada con aceite en aerosol a fuego medio de 2 a 3 min. o hasta que estén tiernas pero crujientes. Agrega la mezcla de huevo; cocínala, revolviéndola de vez en cuando, durante 3 min. o hasta que cuaje.",
      "3.- Úntales a las tortillas el resto de la mezcla de queso crema; ponles encima la mezcla de huevo. Dobla los extremos opuestos de cada tortilla y luego enróllalas al estilo de los burritos."]),
  Item(
      name: 'Platillo 2',
      image: 'assets/images/omelette_de_huevo.jpg',
      details: "Omelette de huevo", 
      ingredientes: ["2 o 3 huevos por comensal.","2 cucharadas de leche.","Aceite de oliva.", "Sal y pimienta al gusto."],
      pasos: ["1.- Para hacer un omelette de huevo delicioso es importante contar con una buena sartén antiadherente, solo así conseguirás que no se pegue y que quede delicioso. Además recuerda que puedes hacer esta tortilla francesa completamente redonda o doblarla por la mitad.",
      "2.- Coloca un chorrito de aceite en la sartén y llévala a fuego medio. Mientras tanto añade los huevos a un bol, agrega dos cucharadas de leche para un resultado más esponjo, salpimienta al gusto y remueve hasta obtener una mezcla perfectamente homogénea. Si quieres que el omelette de huevo te quede suave es importante que no remuevas demasiado, pues mientras más lo haces más consistente será.",
      "3.- Una vez que el aceite esté caliente agrega el huevo a la sartén. El mismo comenzará a cocinarse, cuando los bordes estén ligeramente cocinados, levanta el omelette de un lado con una espátula permitiendo que el huevo que esté aún líquido se vaya a los bordes y se cocine. Voltea cuando esté casi lista.",
      "4.- Si te gusta el omelette suave y no demasiado cocinado puedes dejarlo al fuego un minuto más y luego doblarlo por la mitad y retirarlo. Si por el contrario lo prefieres bien cocido, entonces deja que se haga hasta el punto que quieres. Cuando esté a tu gusto retira de la sartén con la ayuda de una espátula o con un plato."]),
  Item(
      name: 'Platillo 3',
      image: 'assets/images/fettuccine.jpg',
      details: "Fettuccine Alfredo", 
      ingredientes: ["680 Gramos Fettuccine.","1 Unidad Mantequilla.","1 Unidad Nata de Cocinar (Crème Fraiche).",
      "1 Unidad Sal Marina de Canarias.","1 Unidad Pimienta Blanca Molida.","1 Unidad Sal de Ajo.","1 Unidad Queso Romano."],
      pasos: ["1.- Hierve los Fettuccine en una olla grande con agua ligeramente salada.",
      "2.- Cocina durante 8 a 10 minutos o hasta que la pasta esté al dente. Escúrrelos.","3.- Derrite la mantequilla con la crema en una sartén grande a fuego lento para que se incorporen.",
      "4.- Suma la sal, la sal de ajo y la pimienta en las cantidades que prefieras. Luego agrega los quesos y cocina a fuego medio hasta que se derritan. Nota cómo se va espesando la salsa.",
      "5.- Una vez lista la salsa Alfredo, cubre la pasta con ella. Procura usar suficiente Fettuccini de manera de aprovechar toda la salsa. Una característica de este plato es, justamente, que la salsa sea lo suficientemente espesa como para cubrir la pasta."])
];

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageListing(),
      ),
    );

class PageListing extends StatelessWidget {
  const PageListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetario'),
      ),
      body: ListView.builder(
          // ignore: unnecessary_null_comparison
          itemCount: seasideList != null ? seasideList.length : 0,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: ExactAssetImage(seasideList[index].image),
              ),
              title: Text(seasideList[index].name),
              subtitle: Text(seasideList[index].details),
              onTap: () {
                _navigateToPageDetails(context, seasideList[index]);
              },
            );
          }),
    );
  }

  _navigateToPageDetails(BuildContext context, Item item) async {
    // ignore: unused_local_variable
    final resultFromPageDetails = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(
          item: item, key: key,
        ),
      ),
    );
}
}