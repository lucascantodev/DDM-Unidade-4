import 'package:flutter/material.dart';
import 'tela_inicial.dart';
import 'tela1.dart';
import 'tela2.dart';

class Tela3 extends StatefulWidget {
  @override
  _Tela3State createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  void _navegarComFade(String rota) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          switch (rota) {
            case '/tela1':
              return Tela1();
            case '/tela2':
              return Tela2();
            default:
              return TelaInicial();
          }
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: Duration(milliseconds: 600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Tela 3'),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
      ),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(milliseconds: 800),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange[600]!.withAlpha(25),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.orange[600]!.withAlpha(76),
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.circle_rounded,
                  size: 100,
                  color: Colors.orange[400],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Esta é a Tela 3',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Voltar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                      foregroundColor: Colors.white,
                      elevation: 6,
                      shadowColor: Colors.grey.withAlpha(
                        102,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _navegarComFade('/tela1'),
                    child: Text('Tela 1'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      elevation: 6,
                      shadowColor: Colors.blue.withAlpha(102),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _navegarComFade('/tela2'),
                    child: Text('Tela 2'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      foregroundColor: Colors.white,
                      elevation: 6,
                      shadowColor: Colors.green.withAlpha(102),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
