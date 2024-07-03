import 'package:bootz_test/screens/TrailScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: const PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.explore)),
              Tab(icon: Icon(Icons.favorite_border)),
              Tab(icon: Icon(Icons.account_circle)),
            ],
            labelColor: Colors.black,
            indicator: BoxDecoration(),
          
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 150,

          title: Column(

            children: [
              Row(

                children: [

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: 'Buscar uma localização',
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
              SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 8,
                  children: [
                    _buildChoiceChip('Bike'),
                    _buildChoiceChip('Corrida'),
                    _buildChoiceChip('Escalada'),
                    _buildChoiceChip('Camping'),
                    _buildChoiceChip('Praia'),
                    _buildChoiceChip('Cachoeira'),
                  ],
                ),
              ),
            ],
          ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(height: 16),
                const Text(
                  'Para você',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      decoration: TextDecoration.none),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    children: [
                      _buildCard(
                          'Trilha da Praia Vermelha',
                          'Penha - SC',
                          'https://s2.wklcdn.com/image_34/1040648/16409274/10290716Master.jpg'),
                      _buildCard(
                          'Pico da Teta',
                          'Camboriú - SC',
                          'https://media-cdn.tripadvisor.com/media/photo-s/15/21/40/ae/o-formato-da-rocha-que.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                const Text(
                  'Conheça novos lugares',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      decoration: TextDecoration.none),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    children: [
                      _buildCard(
                          'Piscinas Naturais da Barra da Lagoa',
                          'Florianópolis - SC',
                          'https://tudosobretrilhas.com.br/wp-content/uploads/2019/05/piscinas-naturais-barra-da-lagoa.jpg'),
                      _buildCard(
                          'Cachoeira da Fumaça',
                          'Chapada Diamantina - BA',
                          'https://chapadapasseios.com.br/wp-content/uploads/2023/04/chapada-passeios-chapada-diamantina-ba-4.jpg.webp'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChoiceChip(String label) {
    return ChoiceChip(
      label: Text(label),
      selected: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(160),
      ),
    );
  }

  Widget _buildCard(String title, String subtitle, String imgUrl) {

    Icon likeBtn = Icon(Icons.favorite);
    Color likeBtnColor = Colors.red;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TrailScreen(title: title, subtitle: subtitle, imageUrl: imgUrl),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imgUrl,
                    width: 320,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    // color: Colors.red,
                    // icon: const Icon(Icons.favorite),
                    icon: likeBtn,
                    color: likeBtnColor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
