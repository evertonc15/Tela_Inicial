import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Entrar na sua conta', style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           SizedBox(height: 20),
           CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/Perfil.png'),
            ),
            SizedBox(height:20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite seu email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Digite sua senha',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text('Entrar', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),
              Text('Ou', style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Recuperar conta', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
          ],
        ),
      ),
    );
  }
}