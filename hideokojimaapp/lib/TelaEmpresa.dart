import 'package:flutter/material.dart';

class Empresa {
  final String nome;

  final String descricao;
  final String img;

  Empresa({required this.nome, required this.descricao, required this.img});
}

class TelaEmpresa extends StatelessWidget {
  final List<Empresa> empresa = [
    Empresa(
        nome: 'Criação da Empresa',
        descricao:
            'A Kojima Productions é um estúdio de desenvolvimento de jogos fundado por Hideo Kojima. Originalmente criado em 2005 como uma subsidiária da Konami, o estúdio trabalhou principalmente na série Metal Gear. Após o lançamento de Metal Gear Solid V: The Phantom Pain (2015), o estúdio foi temporariamente desfeito devido a divergências entre Kojima e a Konami. Logo depois, Kojima deixou a empresa.',
        img: 'imagens/empresa_logo.png'),
    Empresa(
        nome: 'Retorno da Empresa',
        descricao:
            'Em dezembro de 2015, a Kojima Productions foi reformada como um estúdio independente, e sua nova fase trouxe a parceria com a Sony Interactive Entertainment. O primeiro grande projeto independente do estúdio foi Death Stranding (2019), um jogo inovador que combinou missões de entrega com uma narrativa filosófica sobre conexão humana e isolamento.',
        img: 'imagens/kojimaempresa.jpeg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5a1e06), // AppBar azul escuro
        centerTitle: true, // Centraliza o título
        title: const Text(
          'Empresa',
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
            itemCount: empresa.length,
            itemBuilder: (context, index) {
              final empresas = empresa[index];
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
                            empresas.img,
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
                        color: Colors.grey[800]?.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        empresa[index].descricao,
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
