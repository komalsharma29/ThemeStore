import 'package:flutter/material.dart';
import 'package:wallpaper/types.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,  
   
      home: Main() 
      
            
      );
    
    
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State <Main> createState() =>  MainState();
}

class  MainState extends State <Main> {
  List<TypesModel> wallpaper=[];
  @override
  void initState() { 
    //as soon as app opens fetching data from types.dart file
    wallpaper=getTypes();
    super.initState(); 
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.lightGreenAccent,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.lightGreenAccent,
        title: const Text('Theme Store',style: TextStyle(       
          color: Colors.white,
          fontSize: 25,
        )
        ),
        
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                children: const <Widget> [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    )),
                    Icon(Icons.search)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              child:ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15),
              //list cannot be used inside column
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: wallpaper.length,
              itemBuilder: (context, index) {
                return typesofwallpaper(
                  img: wallpaper[index].img, 
                  title: wallpaper[index].name );
              } ,
            )

            )

            


          ],
        ),
      ), 
           
        
        );
  }
}

class typesofwallpaper extends StatelessWidget {
  final String img,title;
  const typesofwallpaper({required this.img, required this.title});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      //stack used when one widget above other
      child: Stack(children: <Widget> [
        Container(
          child: Image.network(img),
        ),
        Container(
          child:Text(title),
        )


      ]),
    );
  }
}


