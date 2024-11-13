import 'package:flutter/material.dart';
import 'hideokojima.dart';

class Empresa {
  final String nome;

  final String descricao;
  final String img;

  Empresa({required this.nome, required this.descricao, required this.img});
}

class TelaBiografia extends StatelessWidget {
  List<Biografia> biografia = [
    Biografia(
      nome: 'Sobre Kojima',
      imagem: 'imagens/kojimapensativo.jpeg',
      descricao:
          'Kojima nasceu em 24 de agosto de 1963, em Setagaya, Tóquio, mas cresceu na cidade de Kobe. Desde jovem, ele era fascinado por cinema, literatura e videogames, embora inicialmente desejasse seguir carreira como diretor de filmes. Após cursar economia na universidade, ele decidiu trabalhar na indústria de videogames, mesmo enfrentando resistência de familiares e amigos.',
    ),
    Biografia(
      nome: 'Vida Profissional',
      imagem: 'imagens/kojimasendoestranho.jpeg',
      descricao:
          'Em 1986, Kojima se juntou à Konami, uma grande desenvolvedora japonesa, e trabalhou no departamento de planejamento e design. Seu primeiro grande sucesso foi "Metal Gear" (1987), lançado para MSX2, introduzindo um estilo de jogo furtivo, inovador para a época. Com o sucesso de "Metal Gear Solid" (1998) para PlayStation, Kojima solidificou sua reputação como um dos principais criadores de jogos, combinando ação, narrativa complexa e temas filosóficos.',
    ),
    Biografia(
      nome: 'Saída da Konami',
      imagem: 'imagens/kojimabiscoitando.jpeg',
      descricao:
          'Em 2015, Kojima deixou a Konami após divergências internas. Isso aconteceu durante o desenvolvimento de "Metal Gear Solid V: The Phantom Pain", gerando controvérsia e deixando o final do jogo com sensação de inacabado. Durante esse período, Kojima também trabalhava em "Silent Hills", um novo jogo da franquia Silent Hill, em parceria com o cineasta Guillermo del Toro e o ator Norman Reedus, mas o projeto foi cancelado após sua saída. O que mais tarde veio a resultar em Death Stranding e a criação da Kojima Productions',
    ),
    Biografia(
      nome: 'Criação da Kojima Productions',
      imagem: 'imagens/kojimaesualogo.jpeg',
      descricao:
          'Após deixar a Konami, Kojima fundou seu próprio estúdio, Kojima Productions, em 2015.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5a1e06), // AppBar azul escuro
        centerTitle: true, // Centraliza o título
        title: const Text(
          'Biografia',
          style: TextStyle(color: Colors.black), // Fonte preta para o título
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Voltar para o menu
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'imagens/fundomenu.png', // Imagem de fundo
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: biografia.length,
            itemBuilder: (context, index) {
              final empresas = biografia[index];
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      // Centraliza a imagem
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            empresas.imagem,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      empresas.nome,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[800]!.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        biografia[index].descricao,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
