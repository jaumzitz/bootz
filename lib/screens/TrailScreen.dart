import 'dart:ui';

import 'package:flutter/material.dart';

class TrailScreen extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const TrailScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  State<TrailScreen> createState() => _TrailScreenState();
}

class _TrailScreenState extends State<TrailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white, size: 30),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
          // Título
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              // 'Piscinas Naturais da Barra da Lagoa',
              widget.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Subtítulo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              // 'Florianópolis, Santa Catarina',
              widget.subtitle,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
          ),
          // Sessão Categoria
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Categorias',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.0),
              ],
            ),
          ),
          Row(
            children: [
              _buildCategoryIcon('Fácil'),
              _buildCategoryIcon('Rochosa'),
              _buildCategoryIcon('Praia'),
              _buildCategoryIcon('Mergulho'),
            ],
          ),
          // Descrição
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Esta é a descrição detalhada do conteúdo da tela. Aqui você pode adicionar mais informações sobre o tema abordado.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Cor do botão
                minimumSize: Size(double.infinity, 50), // Largura total da tela, altura ajustável conforme necessidade
              ),
              onPressed: () {
                // Ação ao pressionar o botão
                print('Botão "Ver rota" pressionado');
              },
              child: Text(
                'Ver rota',
                style: TextStyle(fontSize: 16, color: Colors.white), // Tamanho do texto ajustável conforme necessidade
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_buildCategoryIcon(String categoryName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    ),
  );
}
