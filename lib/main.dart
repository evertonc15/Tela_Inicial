import 'package:flutter/material.dart';
import 'package:tela_inicial/utils/image.utils.dart';

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
              backgroundImage: AssetImage(ImageUtils.IMG_PERFIL),
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
              style: ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(350, 48)),
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              child: Text('Entrar', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 20),
              Text('Ou', style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(350, 48)),
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                ),
                child: Text('Criar uma nova conta', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
                SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(350, 48)),
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                ),
                child: Text('Recuperar conta', style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
          ],
        ),
      ),
    );
  }
}