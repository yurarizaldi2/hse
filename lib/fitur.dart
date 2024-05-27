import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'registrasi.dart';
import 'subfitur.dart';
class Fitur extends StatelessWidget {
  const Fitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Back'),
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
                      context, MaterialPageRoute(builder: (_) => Subfitur()));
                },
                
                child:const Align(
                  alignment: Alignment.centerLeft,
                child: Text(
                  'Alat-alat HSE',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                  
                  
                  
                ),
               
                ),
                
              
                
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
                
                
                child:const Align(
                  alignment: Alignment.centerLeft,
                child: 
                
                Text(
                  'Pesawat Angkat',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                  
                  
                ),
               
                )
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
                  'Pesawat Angkut',
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
                  'Mesin-Mesin',
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
                
                const Text(
                  'Powered Tools',
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
                
                const Text(
                  'Rigging Tools',
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
                
                const Text(
                  'Electrical Panel',
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
                
                const Text(
                  'Scaffolding',
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