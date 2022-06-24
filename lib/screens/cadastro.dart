import 'package:flutter/material.dart';
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Produto'),
        backgroundColor: Colors.purple,
        actions: [
          TextButton(
            child: const Text(
              'SALVAR',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text('Produto'),
          ),
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text('Quantidade'),
          ),
        ),
      ]),
    );
  }
}
