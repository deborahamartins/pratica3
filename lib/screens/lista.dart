import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Mercado'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => Navigator.pushReplacementNamed(context, '/')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
        onPressed: () => Navigator.pushNamed(context, '/cadastro'),
      ),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Icon(Icons.shopping_basket_outlined),
            title: Text('Produto $index'),
            trailing: Text('Qtde $index'),
          );
        },
      ),
    );
  }
}
