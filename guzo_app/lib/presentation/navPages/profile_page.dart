import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: const FaIcon(
                            FontAwesomeIcons.shareFromSquare,
                            size: 30,
                          ),),
                          const SizedBox(width: 15,),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.settings),iconSize: 30,)
              ],
            ),
            Text("Profile", style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 20,),
          
            Column(
              children: [
                const CircleAvatar(radius: 70, backgroundImage: AssetImage('assets/profile_page/avatar.png'),
            ),
                const SizedBox(
              height: 20,
            ),
                Text("John Doe", style: GoogleFonts.montserrat(
                  color: Colors.black, fontSize: 20
                ),), 
                const SizedBox(
                  height: 50,
                ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 117, 94),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: Text("Edit Profile", style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
              )
              ],
            )
          ],
        ),
      ),
    );
  }
}
