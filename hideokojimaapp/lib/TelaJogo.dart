import 'package:flutter/material.dart';

class Jogo {
  final String titulo;
  final String capa;
  final String descricao;
  final String videoUrl;

  Jogo({
    required this.titulo,
    required this.capa,
    required this.descricao,
    required this.videoUrl,
  });
}

class TelaJogo extends StatelessWidget {
  final List<Jogo> jogos = [
    Jogo(
      titulo: 'Metal Gear 87',
      capa: 'imagens/metalgear87.jpg',
      descricao:
          'A série Metal Gear é uma das franquias mais importantes da história dos videogames, sendo amplamente creditada como uma das pioneiras no gênero stealth. Criada por Hideo Kojima, a saga teve início em 1987 com o lançamento de Metal Gear para o computador MSX2. A proposta do jogo foi inovadora para a época: ao invés de focar na ação direta, Kojima introduziu a mecânica de furtividade, onde o jogador deveria evitar inimigos ao invés de confrontá-los diretamente.',
      videoUrl: 'https://www.youtube.com/watch?v=ehlAMTh42Ko',
    ),
    Jogo(
      titulo: 'Metal Gear Solid',
      capa: 'imagens/metalgearsolid.jpg',
      descricao:
          'O lançamento para o PlayStation trouxe gráficos em 3D e uma narrativa cinematográfica profunda. Kojima foi responsável por dirigir e roteirizar o jogo, que misturava temas políticos e filosóficos com uma experiência imersiva e inovadora para o gênero. Lançado em 1998 para PS1',
      videoUrl: 'https://www.youtube.com/watch?v=WpG9XIfFkE0',
    ),
    Jogo(
      titulo: 'Boktai: The Sun Is In Your Hand',
      capa: 'imagens/boktai.jpg',
      descricao:
          'Boktai, também conhecido como Bokura no Taiyō no Japão, é uma série de jogos desenvolvida por Hideo Kojima e lançada pela Konami para o Game Boy Advance. O primeiro título, Boktai: The Sun Is in Your Hand (2003), é notável por incorporar um sensor solar embutido no cartucho, que influencia a jogabilidade de forma única: o jogador precisa de luz solar real para carregar a arma do protagonista e enfrentar inimigos vampíricos. A série recebeu várias continuações, mas algumas delas, como Boktai 3: Sabatas Counterattack, não foram lançadas fora do Japão. O último jogo, Lunar Knights (2006), para Nintendo DS, fez uma transição parcial para um novo formato, removendo a necessidade do sensor solar e focando mais na ação. Essa mudança foi em parte uma tentativa de rebranding para superar a recepção limitada causada pelo requisito de jogar ao ar livre​Apesar de seu público de nicho, Boktai é lembrado como uma das experiências mais inovadoras nos jogos portáteis, demonstrando a disposição de Kojima em experimentar com o meio e explorar as interações entre o mundo real e o virtual.',
      videoUrl: 'https://www.youtube.com/watch?v=OWppMbFWSRw',
    ),
    Jogo(
      titulo: 'Death Stranding',
      capa: 'imagens/deathstranding.jpg',
      descricao:
          'Death Stranding é um jogo lançado em 2019 pela Kojima Productions, marcando o primeiro projeto de Hideo Kojima após sua saída da Konami. A trama se passa em uma versão pós-apocalíptica dos EUA, devastada por fenômenos sobrenaturais como os "Beached Things" (BTs) e o "Timefall", uma chuva que acelera o envelhecimento. O protagonista, Sam Porter Bridges (interpretado por Norman Reedus), é um mensageiro que conecta comunidades isoladas enquanto enfrenta criaturas e perigos físicos e psicológicos. O jogo introduz o Social Strand Syste, uma mecânica online em que as ações dos jogadores, como a construção de estruturas, afetam o mundo de outros usuários, promovendo cooperação indireta. Death Stranding explora temas como isolamento, luto e a necessidade de conexão em tempos de crise, refletindo sobre a sociedade moderna e a fragmentação causada por eventos globais. Embora tenha recebido elogios por sua originalidade e narrativa, o jogo também gerou divisões entre críticos e jogadores devido ao seu ritmo lento e foco na entrega de itens. Kojima descreveu a obra como um novo gênero de jogo, buscando criar experiências além dos limites tradicionais de gameplay e narrativa. O título consolidou ainda mais a imagem de Kojima como um autor disposto a arriscar e inovar na indústria de jogos.',
      videoUrl: 'https://www.youtube.com/watch?v=2_p9wLMNOeM',
    ),
    Jogo(
      titulo: 'Snatcher',
      capa: 'imagens/snatcher.jpg',
      descricao:
          'Snatcher é um jogo produzido pela Konmai, projetado por Hideo Kojima, Keiichiro Toyama, sendo um jogo que conta a história do nosso héroi Gillian Seed que trabalha para a orgazinação policial chamada JUNKERS (Japanese Undercover Neuro-Cinetic Elimination Rangers). Ele está investigando o caso Snatcher, Snatechers são robôs exterminadores, que eliminam pessoas e pegam seu lugar após isso. Snatcher foi o segundo jogo escrito e dirigido por Hideo Kojima, o jogo é em primeira pessoa, o jogador tem que usar os comandos: "Olhar", "Investigar", "Falar", "Perguntar" e "Mover". Um fato sobre a produção do jogo foi pelo enorme cansaço no qual o Kojima passou produzindo esse jogo por ser desenvolvido para PC88, nem conhecimento, nem canais de venda, então eles tiveram que começar tudo do zero, o que causou um grande impacto a sua saúde, pelas as palavras dele: "Chegando ao fim do projeto, eu consegui uma úlcera de estômago como Gibson. Porém, foi essa experiência que me trouxe aqui e me fez ser aquilo que me tornei hoje”.',
      videoUrl: 'https://www.youtube.com/watch?v=9Ij_Oo4zIVI',
    ),
    Jogo(
      titulo: 'Policenauts',
      capa: 'imagens/policenauts.jpg',
      descricao:
          'Policenauts é um jogo de aventura cinemático publicado pela Konami e escrito e dirigido por Hideo Kojima, que foi realizado para PC-9821 em 1994. O jogo nunca foi lançado oficialmente para fora do Japão, sendo trazido futuramente por fãs. Policenauts é um jogo de aventura gráfico, similar a Snathcer, sendo jogado na maior parte em point and click, alguns momentos o jogador precisa passar por algumas fases com mecânica shooter. Policenauts, assim como Snatcher tem várias referências a filmes. A história do jogo se situa em 2010, a humanidade lançou Beyond Coast que é a primeira colônia totalmente funcional, três anos depois, cinco dos melhores oficiais da policia ao redor do mundo foram escolhidos para manter a lei e ordem entre as primeiras gerações de imigrantes do Beyond Coast.',
      videoUrl: 'https://www.youtube.com/watch?v=TZ1KuD1Gw00',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5a1e06), // AppBar azul escuro
        centerTitle: true, // Centraliza o título
        title: const Text(
          'Jogos',
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
            itemCount: jogos.length,
            itemBuilder: (context, index) {
              final jogo = jogos[index];
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
                            jogo.capa,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      jogo.titulo,
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
                        jogo.descricao,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Abra o vídeo usando um navegador ou webview
                      },
                      child: const Text('Assistir Gameplay'),
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
