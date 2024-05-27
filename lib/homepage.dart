import 'package:flutter/material.dart';
import 'fitur.dart';
import 'package:carousel_slider/carousel_slider.dart';



void main() => runApp(const Homepage());

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      
      home:
       const Navigasi(),
       
    );
    
  }
}

class Navigasi extends StatefulWidget {
  const Navigasi({super.key});

  @override
  State<Navigasi> createState() => _NavigasiState();
  

}

  







  

class _NavigasiState extends State<Navigasi> {
  int currentPageIndex = 0;

  
void _incrementCounter() {
    setState(() {
     
      Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Fitur()));
    });
  }
  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    
    return Scaffold(
         floatingActionButton: FloatingActionButton.small(
           backgroundColor: const Color.fromARGB(255, 0, 0, 0),
           
       onPressed: _incrementCounter,
        tooltip: 'Quick Access',
        child: const Icon(Icons.add, color:Colors.white),
        
      ),

floatingActionButtonLocation:    
      FloatingActionButtonLocation.centerDocked,


      backgroundColor: Colors.white,
            appBar: AppBar(
              
        title: const Text('HSE Apps'),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        
        indicatorColor: const Color.fromARGB(255, 25, 152, 255),
        selectedIndex: currentPageIndex,
        



        
        destinations: const <Widget>[
         
   
      
     
    
  
          NavigationDestination(
            
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
         
           NavigationDestination(
            icon: Badge(
              label: Text('soon'),
              child: Icon(Icons.info),
            ),
            label: 'HSE Info',
          ),
           NavigationDestination(
            
            icon: Badge(
              label: Text('soon'),
              child: Icon(Icons.person_4_sharp),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body:
          
       <Widget>[


 ListView(
          children: [
            CarouselSlider(
              items: [
                //gambar satu
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage(
                          "lib/images/infohse1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //gambar kedua
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(
                          "lib/images/infohse2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              

             
              ],

              //pengaturan
              options: CarouselOptions(
                height: 175.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1200),
                viewportFraction: 0.95,
              ),
            ),
         const SizedBox(
                   
                    height: 25,
                                    
                   ),
        const Center (child: Text('WIKA HSE APP',
                style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 0, 128, 202), fontSize: 21))),
          GestureDetector(
  onTap: () {

      Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Fitur()));

      }, 
 
    
               






                  
    child: Center(
      
                
                child: SizedBox(
                    //width: 365,
                    //height: 310,
                  
                   
                    child: Image.asset('lib/images/fullmenu.png')),
              ),
  
  ),
       



  ],
        ),







    
        const Padding(
          
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('untuk notif'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('untuk notif'),
                ),
              ),
            ],
          ),
        ),
        
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),

const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 1'),
                  subtitle: Text('This is a notification'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications_sharp),
                  title: Text('Notification 2'),
                  subtitle: Text('This is a notification'),
                ),
              ),
            ],
          ),
        ),
      ][currentPageIndex],
    );
  }
}
