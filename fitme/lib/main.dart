import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "MyApp",
      home: NewHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    ),
  );
}

class NewHomePage extends StatelessWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("App bar for MyApp")),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),

                width: 150,
                height: 100,
                child: Text("FITMe",
                  style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),


              ),


            ],
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
              accountName: Text("Jay Bhanushali"),
              accountEmail: Text("ayalidigitalmedia.com"),
              currentAccountPicture: CircleAvatar(
                // child: Image.network(
                //   "https://media.istockphoto.com/photos/portrait-of-young-businessman-standing-in-his-office-with-arms-picture-id1263966471?b=1&k=20&m=1263966471&s=170667a&w=0&h=1RR2Rfe3S9D60MUgV0Jo-MkSgPYlaOksQ46kAop-paY="
                // ),
                backgroundImage: NetworkImage(""
                    "https://media.istockphoto.com/photos/style-that-says-lets-do-business-picture-id1294434031?b=1&k=20&m=1294434031&s=170667a&w=0&h=V-PgEi81N2jMjwGU1o5QFWcpxpScZtwWb7P6c2ChvL4="),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Email"),
              subtitle: Text("jhb3@somaiya.edu"),
              trailing: Icon(Icons.edit),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Name"),
              subtitle: Text("Jay Bhanushali"),
              trailing: Icon(Icons.edit),

            ),
          ],
        ),
      ),



      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed:(){} ,
        child: Icon(Icons.edit),

      ),



    );
  }
}

