import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         theme: ThemeData(primarySwatch: Colors.deepOrange),
         darkTheme: ThemeData(primarySwatch: Colors.cyan),
         debugShowCheckedModeBanner: false,
         color: Colors.deepOrangeAccent,
         home: HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{

  Mysnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  myalertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
          child: AlertDialog(
          title: Text("Alert !"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(onPressed: (){
                Mysnackbar("Delete Successful", context);
                Navigator.of(context).pop();
              }, child: Text("Yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          ),
          );
    }
    );
  }
  submitbutton(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }

  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(30),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))
      )
    );
    ButtonStyle buttonStyle2=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50)
    );

     return Scaffold(
        appBar: AppBar(
          title: Text("My app"),
          titleSpacing:10,
          centerTitle:false,
          toolbarHeight: 70,
          toolbarOpacity:1,
          elevation: 100,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: (){Mysnackbar("I am email",context);}, icon: Icon(Icons.mail)),
            IconButton(onPressed: (){Mysnackbar("I am comment",context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){Mysnackbar("I am search",context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){Mysnackbar("I am alarm", context);}, icon: Icon(Icons.access_alarm)),

          ],




        ),
       floatingActionButton:FloatingActionButton(
         elevation: 10,
         child: Icon(Icons.add),
         backgroundColor: Colors.cyan,
         onPressed:(){
           Mysnackbar("I am Floating point", context);

         },
       ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
           BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
           
         ],
         onTap: (int index){
           if(index==0){
             Mysnackbar("I am Home", context);
           }
           if(index==1){
             Mysnackbar("I am Profile", context);
           }
           if(index==2){
             Mysnackbar("I am Email", context);
           }
         },
       ),
       drawer: Drawer(
         child: ListView(
           children: [
             DrawerHeader(
               padding: EdgeInsets.all(0),
                 child: UserAccountsDrawerHeader(
                   decoration: BoxDecoration(color: Colors.white),
                   accountName: Text("Shakil Rana",style: TextStyle(color: Colors.black),),
                   accountEmail: Text("shakil@gmail.com",style: TextStyle(color: Colors.black),),
                   currentAccountPicture: Image.network("https://scontent.fdac2-1.fna.fbcdn.net/v/t1.6435-9/134923238_1287067015011269_172029586917401863_n.jpg?stp=c0.18.206.206a_dst-jpg_p206x206&_nc_cat=111&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeF5Kr8OjNSVmbwtICdHaOPacJXOp8DJYGlwlc6nwMlgaZ-9xcPrWv9_JZtQUhbgPsfwg69nwpAb5T9oe2wxUwe0&_nc_ohc=3t7pYmhabTIAX81YBxy&_nc_ht=scontent.fdac2-1.fna&oh=00_AfAB8HFigtRdL7i5TqLGeisVscYA_vLTcJ8_573zrgVRGg&oe=64BFEF82"),
                 onDetailsPressed: (){
                     Mysnackbar("This is my profile", context);
                 },
                 )
             ),
             ListTile(leading:Icon(Icons.person),title: Text("Profile"),onTap: (){
               Mysnackbar("I am Profile", context);
             },),
             ListTile(leading: Icon(Icons.settings),title:Text("Sitting"),onTap: (){
               Mysnackbar("I am setting", context);
             },),
             ListTile(leading: Icon(Icons.help),title: Text("Help"),onTap: (){
               Mysnackbar("You can help by me", context);
             },),
           ],

         ),
       ),
       endDrawer: Drawer(
         child: ListView(
           children: [
             DrawerHeader(
                 padding: EdgeInsets.all(0),
                 child: UserAccountsDrawerHeader(
                   decoration: BoxDecoration(color: Colors.white),
                   accountName: Text("Shakil Rana",style: TextStyle(color: Colors.black),),
                   accountEmail: Text("shakil@gmail.com",style: TextStyle(color: Colors.black),),
                   currentAccountPicture: Image.network("https://scontent.fdac2-1.fna.fbcdn.net/v/t1.6435-9/134923238_1287067015011269_172029586917401863_n.jpg?stp=c0.18.206.206a_dst-jpg_p206x206&_nc_cat=111&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeF5Kr8OjNSVmbwtICdHaOPacJXOp8DJYGlwlc6nwMlgaZ-9xcPrWv9_JZtQUhbgPsfwg69nwpAb5T9oe2wxUwe0&_nc_ohc=3t7pYmhabTIAX81YBxy&_nc_ht=scontent.fdac2-1.fna&oh=00_AfAB8HFigtRdL7i5TqLGeisVscYA_vLTcJ8_573zrgVRGg&oe=64BFEF82"),
                   onDetailsPressed: (){
                     Mysnackbar("This is my profile", context);
                   },
                 )
             ),
             ListTile(leading:Icon(Icons.person),title: Text("Profile"),onTap: (){
               Mysnackbar("I am Profile", context);
             },),
             ListTile(leading: Icon(Icons.settings),title:Text("Sitting"),onTap: (){
               Mysnackbar("I am setting", context);
             },),
             ListTile(leading: Icon(Icons.help),title: Text("Help"),onTap: (){
               Mysnackbar("You can help by me", context);
             },),
           ],

         ),
       ),
       /*body: Container(
         height: 200,
         width: 200,
         alignment: Alignment.center,
         margin: EdgeInsets.fromLTRB(20, 21, 20, 40),
         padding: EdgeInsets.all(0),
         child: Text(
           "Hero Shakil",
           style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
         ),

         decoration: BoxDecoration(
             color: Colors.blue,
           border:Border.all(color: Colors.black,width: 6)
         ),


       ),*/
     /*  body: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Container(height: 30,width: 30,child:Image.network('https://assets.website-files.com/6021a3f8913fb55f79589fbb/6075466ca6f68b414dd2fab7_App%20Icon%20Keystone-p-2000.png'),),
           Container(height: 30,width: 30,child:Image.network('https://assets.website-files.com/6021a3f8913fb55f79589fbb/6075466ca6f68b414dd2fab7_App%20Icon%20Keystone-p-2000.png'),),
           Container(height: 30,width: 30,child: Image.network('https://assets.website-files.com/6021a3f8913fb55f79589fbb/6075466ca6f68b414dd2fab7_App%20Icon%20Keystone-p-2000.png'),)
         ],
       ),*/
      /* body: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           TextButton(onPressed: (){Mysnackbar("I am text Button", context);}, child: Text("Text Button")),
           ElevatedButton(onPressed: (){Mysnackbar("I am Elavator Button", context);}, child: Text("Elavetor Button"),style: buttonStyle,),
           OutlinedButton(onPressed: (){Mysnackbar("I am outliner Button", context);}, child: Text("oythliner BUtton")),
         ],
       ),*/
       /*body: Center(
         child: ElevatedButton(child: Text("click me"),onPressed: (){myalertDialog(context);} ,),
       ),*/
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,

         children: [
           Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Enter First Name"),),),
           Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Enter 2nd Name"),),),
           Padding(padding: EdgeInsets.all(10),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Enter Your Email"),),),
           Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: (){submitbutton("Submit successfull", context);},child: Text("Submit"),style: buttonStyle2,),)
         ],
       )

 



     );
  }
}