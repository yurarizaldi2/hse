import 'package:flutter/material.dart';
import 'subfitur1.dart';
import 'registrasi.dart';
class Subfitur extends StatelessWidget {
  const Subfitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          
      
      SizedBox(

          height: 50,
              width: double.infinity, 
              
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 224, 223, 223),),
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Registrasi()));
                },
                child:const Align(
                  alignment: Alignment.centerLeft,
                child: 
                
                const Text(
                  'Alat Pelindung Diri (APD)',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                  
                  
                ),
                )
              
                
              ),

      ),
      const SizedBox(
              height: 15,

              
            ), 
      SizedBox(
        

          
     
          height: 50,
              width: double.infinity, 
            
              child: ElevatedButton(
               
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 224, 223, 223),),
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Subfitur1()));
                },
                child:const Align(
                  alignment: Alignment.centerLeft,
                child: 
                
                const Text(
                  'APAR',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                  
                  
                ),
                )
              
                
              ),

      ),

const SizedBox(
              height: 15,

              
            ), 

      SizedBox(

          height: 50,
              width: double.infinity, 
              
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 224, 223, 223),),
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Registrasi()));
                },
                child:const Align(
                  alignment: Alignment.centerLeft,
                child: 
                
                Text(
                  'P3K',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                  
                  
                ),
               
                )
                
              ),

      ),
     
      

              
              ],
        ),
      
    )
    );
  }
}