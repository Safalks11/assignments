import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AppDrawer(),
  ));
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                  colors: [Colors.blue, Colors.white, Colors.blueAccent])),
          child: ListView(
            children: [
              const SizedBox(
                width: 150,
                height: 50,
              ),
              const ListTile(
                title: Text('Sundar Pichai'),
                subtitle: Text(
                  'CEO at Alphabet inc',
                  style: TextStyle(fontSize: 10),
                ),
                trailing: Icon(Icons.close),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/jonas-kakaroto-KIPqvvTOC1s-unsplash.jpg"),
                  radius: 30,
                ),
              ),
              const SizedBox(
                width: 100,
                height: 20,
              ),
              Divider(),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text("Dashboard"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DrawerHome()));
                },
              ),
              const ListTile(
                leading: Icon(Icons.leaderboard),
                title: Text("Leads"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.people_outline_rounded),
                title: Text("Clients"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.rocket_launch_rounded),
                title: Text("Projects"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.emoji_people_rounded),
                title: Text("Patients"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.subject_sharp),
                title: Text("Subscription"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.payments),
                title: Text("Payments"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.people_outline_rounded),
                title: Text("Users"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.video_library_rounded),
                title: Text("Library"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                width: 250,
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Logout"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent[200],
                      shadowColor: Colors.redAccent[200],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: const Text("Dashboard"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                          "assets/images/jonas-kakaroto-KIPqvvTOC1s-unsplash.jpg"))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              "Sundar Pichai",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit ut aliquam purus sit. Fermentum dui faucibus in ornare quam viverra orci sagittis. At augue eget arcu dictum varius duis at. Feugiat vivamus at augue eget arcu dictum varius. Tellus integer feugiat scelerisque varius. Ut consequat semper viverra nam libero justo. Orci eu lobortis elementum nibh tellus molestie. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce. Sit amet aliquam id diam maecenas ultricies mi eget. Euismod in pellentesque massa placerat.

Lacinia quis vel eros donec ac odio tempor orci. Nullam ac tortor vitae purus faucibus. Fermentum dui faucibus in ornare quam viverra. Nisi lacus sed viverra tellus in hac. Massa id neque aliquam vestibulum morbi. Amet venenatis urna cursus eget nunc scelerisque viverra. Amet volutpat consequat mauris nunc congue. Nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Lectus urna duis convallis convallis. Donec enim diam vulputate ut. Turpis egestas pretium aenean pharetra magna. Eleifend donec pretium vulputate sapien nec sagittis. Sodales neque sodales ut etiam sit amet nisl. Metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices. Id donec ultrices tincidunt arcu non sodales neque sodales ut. Nibh cras pulvinar mattis nunc. Ac turpis egestas sed tempus urna et pharetra pharetra massa.

In aliquam sem fringilla ut morbi tincidunt augue interdum velit. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Ante in nibh mauris cursus. Adipiscing elit ut aliquam purus sit amet luctus. Vivamus arcu felis bibendum ut tristique et egestas quis ipsum. Ornare massa eget egestas purus viverra. Ultrices neque ornare aenean euismod elementum nisi. Sed vulputate mi sit amet mauris commodo. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Elementum facilisis leo vel fringilla est ullamcorper. Molestie nunc non blandit massa enim nec dui nunc. Augue ut lectus arcu bibendum at varius. Risus commodo viverra maecenas accumsan lacus vel facilisis volutpat est. Purus faucibus ornare suspendisse sed nisi lacus. Lectus quam id leo in. Ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. A diam maecenas sed enim ut sem viverra. Sed tempus urna et pharetra pharetra massa massa ultricies mi.
                """),
              ),
            ),
          )
        ],
      ),
    );
  }
}
