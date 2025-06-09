import 'package:flutter/material.dart';

class BotaoNavegacao extends StatelessWidget {
  final String texto;
  final Color cor;
  final VoidCallback onPressed;

  const BotaoNavegacao({
    Key? key,
    required this.texto,
    required this.cor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(texto),
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 3,
      ),
    );
  }
}
