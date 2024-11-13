import 'package:flutter/material.dart';
import 'TelaJogo.dart';
import 'TelaEmpresa.dart';
import 'TelaBiografia.dart';

class Menu {
  final String titulo;
  final String imagem;
  final List<MenuItem> icones;

  Menu({
    required this.titulo,
    required this.imagem,
    required this.icones,
  });
}

class MenuItem {
  final String label;
  final IconData icone;
  final Function(BuildContext) navegar;

  MenuItem({
    required this.label,
    required this.icone,
    required this.navegar,
  });
}

class TelaMenu extends StatelessWidget {
  final Menu menu = Menu(
    titulo: 'Hideo Kojima',
    imagem: 'imagens/kojimabig.jpg',
    icones: [
      MenuItem(
        label: 'Biografia',
        icone: Icons.person,
        navegar: (context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaBiografia()),
          );
        },
      ),
      MenuItem(
        label: 'Jogos',
        icone: Icons.videogame_asset,
        navegar: (context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaJogo()),
          );
        },
      ),
      MenuItem(
        label: 'Empresa',
        icone: Icons.business,
        navegar: (context) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaEmpresa()),
          );
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5a1e06), // AppBar azul escuro
        centerTitle: true, // Centraliza o título
        title: Text(
          menu.titulo,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          // Imagem de fundo
          Positioned.fill(
            child: Image.asset(
              'imagens/fundomenu.png', // Imagem de fundo
              fit: BoxFit.cover,
            ),
          ),
          // Conteúdo do menu
          Center(
            child: Container(
              padding: const EdgeInsets.all(8), // Espaço interno para a borda
              decoration: BoxDecoration(
                color: Colors.black, // Cor da borda
                borderRadius: BorderRadius.circular(12), // Bordas arredondadas
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12), // Bordas da imagem
                child: Image.asset(
                  menu.imagem,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff5a1e06), // Barra inferior azul escuro
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.white,
        items: menu.icones.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icone),
            label: item.label,
          );
        }).toList(),
        onTap: (index) {
          final item = menu.icones[index];
          item.navegar(context); // Navega para a tela correspondente
        },
      ),
    );
  }
}
