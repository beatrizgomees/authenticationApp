import 'package:flutter/material.dart';

class FolderContentComponent extends StatefulWidget {
  const FolderContentComponent({super.key});

  @override
  State<FolderContentComponent> createState() => _FolderContentComponentState();
}

class _FolderContentComponentState extends State<FolderContentComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          top: -20.0,
          left: 10,
          right: 10,
          child: Image.asset(
            'assets/images/folder(2).png',
          ),
        ),
        Positioned(
          top: 60.0, // Ajuste a posição vertical conforme necessário
          left: 10,
          right: 10,
          child: Image.asset(
            'assets/images/folder(3).png', // Substitua pelo caminho da sua imagem sobreposta
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 140.0, // Ajuste a posição vertical conforme necessário
          left: 10,
          right: 10,
          child: Image.asset(
            'assets/images/folder(4).png', // Substitua pelo caminho da sua imagem sobreposta
          ),
        ),
        Positioned(
          top: 220.0,
          left: 10,
          right: 10,
          child: Image.asset(
            'assets/images/folder(5).png',
          ),
        ),
      ],
    );
  }
}
