import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   createState()=>_HomePage();

// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  final String _email = 'julianhauscarriague@gmail.com';
  final String _password = '123456';

  @override
  Widget build(context) {
    const espacio =  Divider(
      height: 20.0,
    );
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const CircleAvatar(
              foregroundColor: Colors.transparent,
              radius: 134.5,
              backgroundImage: AssetImage('images/logovisitas.jpg'),
            ),
            Text(
              'Login ',
              style: TextStyle(
                  color: Colors.blue[400],
                  fontStyle: FontStyle.italic,
                  fontFamily: 'RobotoMono',
                  fontSize: 24.3),
            ),
            espacio,
             TextField(
              enableInteractiveSelection: false,
              autofocus: true,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                prefixIcon:const  Icon(Icons.email_outlined),
                 helperText: 'introduzca su email ',
                  hintText: 'Email',
                  labelText: ' Email',
                  suffixIcon: const Icon(
                    Icons.alternate_email,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
               onSubmitted:  (valor) {
                valor = _email;
                 
                 print(_email);
              },
            ),
            espacio,
            TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon:const Icon(Icons.password_rounded),
                  helperText: 'introduce la contraseña ',
                  hintText: 'Password',
                  labelText: ' Password',
                  suffixIcon:const Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onSubmitted: (valor) {
                setState(() {
                  valor = _password;
                });
              },
            ),
            espacio,
            Container(
              child: (TextButton(
                  child:const Text('Iniciar Sesión'),
                  onPressed: () {
                    setState(() {});
                  })),
            ),
          ])
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
