import 'package:flutter/material.dart';
import 'package:findmua/muahome/screens/mualocater_options.dart';
import 'change_pass.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            profileCard(
              context,
              "Deva Elmada Romadhana",
              "Sistem Informasi",
              "images/elmadaamada.jpg",
              "22082010004",
              "20 yrs",
              "https://github.com/elmadaamada",
              "22082010004@student.upnjatim.ac.id",
              "Pemrograman Mobile",
              "UPN Veteran Jawa Timur",
            ),
            const SizedBox(height: 20),
            profileCard(
              context,
              "Freya Enggrayni",
              "Sistem Informasi",
              "images/freya.jpg",
              "22082010003",
              "20 yrs",
              "https://github.com/freyaen",
              "22082010003@student.upnjatim.ac.id",
              "Pemrograman Mobile",
              "UPN Veteran Jawa Timur",
            ),
          ],
        ),
      ),
    );
  }

  Widget profileCard(
    BuildContext context,
    String name,
    String kelas,
    String imagePath,
    String npm,
    String age,
    String github,
    String email,
    String matkul,
    String univ,
  ) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(225, 152, 180, 255), Color.fromARGB(224, 199, 214, 255),],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 65.0,
              backgroundImage: AssetImage(imagePath),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              kelas,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                actionButton(
                  context,
                  "Settings",
                  Icons.settings,
                  Color.fromARGB(224, 84, 130, 255),
                  const ChangePassword(),
                ),
                actionButton(
                  context,
                  "Log Out",
                  Icons.login_outlined,
                  Color.fromARGB(255, 255, 8, 0),
                  const MUALocateOptions(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    infoColumn("npm", npm),
                    infoColumn("Age", age),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Center(
                child: Card(
                  margin: const EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                  child: SizedBox(
                    width: 350.0,
                    height: 320.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Information",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Divider(
                            color: Colors.grey[300],
                          ),
                          buildInfoRow(Icons.person, "Github", github),
                          const SizedBox(height: 20.0),
                          buildInfoRow(Icons.alternate_email, "Email", email),
                          const SizedBox(height: 20.0),
                          buildInfoRow(Icons.book, "Mata Kuliah", matkul), 
                          const SizedBox(height: 20.0),
                          buildInfoRow(Icons.school, "Universitas", univ), 
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget actionButton(BuildContext context, String text, IconData icon,
      Color color, Widget destination) {
    return SizedBox(
      width: 150,
      height: 50,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.blue,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: color,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget infoColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          value,
          style: const TextStyle(
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(IconData icon, String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.blueAccent[400],
          size: 35,
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[700],
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
