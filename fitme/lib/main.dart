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
        title: Center(child: Text("FITMe", textAlign: TextAlign.center,)),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),



                child: Text("WELCOME, User",
                  style: TextStyle(fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),


              ),
              Container(
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.only(top: 20.0),
                width: 150,

                child: Text("Login",
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),


              ),
              Container(
                padding: EdgeInsets.all(10),

                width: 300,
                child: TextField(

                  decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      labelText: ("Email"),
                      hintText: 'Enter valid mail id'
                  ),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 300,

                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',

                  ),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),


              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),

                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => NewHomePage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 15.0),

                child: Text("------------------OR------------------",
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),


              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue[200], borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => NewHomePage()));
                  },
                  child: Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),



              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(


                      child : Text("Not A Member?",
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => NewHomePage()));
                          },

                          child : Text(" Sign Up!",
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                        )
                    )
                  ],

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







    );
  }
}

