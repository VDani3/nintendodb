import 'package:flutter/material.dart';

class LayoutJoc extends StatelessWidget {
  final dynamic itemData;

  // Relacionar els colors amb el text que els defineix

  // Constructor
  LayoutJoc({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ocupar la meitat superior de l'espai amb la imatge
          SizedBox(
            width: MediaQuery.of(context).size.width * 100.0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              'assets/images/${itemData["imatge"]}',
              fit: BoxFit.contain,
            ),
          ),
          // Ocupar la meitat inferior de l'espai amb els textos
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${itemData['nom']}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(itemData['any'].toString()),
                Text(itemData['tipus']),
                Text(itemData['descripcio'])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
