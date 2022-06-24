import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_basket_outlined, size: 72, color: Colors.purple),
          Text(
            'Mercado',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Email')),
          ),
          TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')),
            obscureText: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Background color
              ),
              child: Text('ENTRAR'),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
            ),
          ),
        ],
      ),
    );
  }
}
