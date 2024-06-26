import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Buscar uma localizacão',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(160),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Image.asset(
              'assets/images/sun.png',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(

              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Wrap(
                    spacing: 8,

                    children: [


                      ChoiceChip(
                        label: Text('Bike'),
                        selected: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(160)),
                      ),
                      ChoiceChip(
                        label: Text('Corrida'),
                        selected: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(160)),
                      ),
                      ChoiceChip(
                        label: Text('Escalada'),
                        selected: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(160)),
                      ),
                      ChoiceChip(
                        label: Text('Camping'),
                        selected: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(160)),
                      ),
                      ChoiceChip(
                        label: Text('Praia'),
                        selected: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(160)),
                      )


                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

String _getLabel(int index) {
  switch (index) {
    case 0:
      return 'Bike';
    case 1:
      return 'Car';
    case 2:
      return 'Bus';
    case 3:
      return 'Train';
    case 4:
      return 'Plane';
    default:
      return '';
  }
}