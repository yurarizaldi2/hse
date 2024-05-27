import 'package:flutter/material.dart';
import 'package:hse_apps/homepage.dart';
import 'package:hse_apps/registrasi.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              
              child: Center(
                
                child: SizedBox(
                    width: 365,
                    height: 310,
                    
                   
                    child: Image.asset('lib/images/piclogin.png')),
              ),
            ),
            const Text('  Login',
                style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 0, 0, 0), fontSize: 40)),
            const Text('  Sign in to continue.',
                style: TextStyle(color: Color.fromARGB(255, 180, 180, 180), fontSize: 15)),
            Padding(
              padding: const EdgeInsets.only(left:65.0,right: 65.0,top:20,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 20),
           
                      
              child: TextField(
                
                decoration: InputDecoration(
                  
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),),
                    labelText: 'NIP',
                    hintText: 'Enter valid NIP'),
                      
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(
                  left: 65.0, right: 65, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),),
                    
                    labelText: 'Password',
                    hintText: 'Enter password'),
              ),
              
            ),
            const SizedBox(
              height: 20,

              
            ), 
            SizedBox(
              height: 50,
              width: 275,
              
              child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),),
                  
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Homepage()));
                },
                
                child: 
                const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  
                ),
               
              
                
              ),
            ),
    const SizedBox(
              height: 15,
            ),
            
            SizedBox(
              height: 50,
              width: 275,
              
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 201, 201, 201),),
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Registrasi()));
                },
                
                child: 
                
                const Text(
                  'Register Account',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
                  
                  
                ),
               
              
                
              ),
            ),



            const SizedBox(
              height: 20,
            ),
            const Text('Forgot password?', style: TextStyle(color: Color.fromARGB(255, 175, 175, 175), fontSize: 15),)
          ],
        ),
      ),
    );
  }
}
