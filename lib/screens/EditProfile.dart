import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 48.0),
            child: Text(
              'Edit Profile',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigate back or perform other actions
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'images/editprofilepic.png'), // Replace with your asset image path
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF5C754),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        color: Color(0xFF000000),
                      ),
                      padding: EdgeInsets.all(4.0),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildTextField("Name", "Melissa Peters"),
            buildTextField("BIO", ""),
            buildTextField("Address", "melpeters@gmail.com"),
            buildTextField("Password", "************", isPassword: true),
            buildDatePickerField("Date of Birth", "23/05/1995"),
            buildDropdownField("Country/Region", "Nigeria"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save changes
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xFF000000),
                backgroundColor: Color(0xFFF5C754), // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text(
                "Save Changes",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home, color: Color(0xFF000000)),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message_outlined, color: Color(0xFF000000)),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings, color: Color(0xFFF5C754)),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person, color: Color(0xFF000000)),
      //       label: '',
      //     ),
      //   ],
      //   type: BottomNavigationBarType.fixed,
      // ),
    );
  }

  Widget buildTextField(String label, String placeholder,
      {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelStyle: const TextStyle(
              color: Color(0xFF000000), fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(color: Color(0xFF544C4C)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget buildDatePickerField(String label, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: const TextStyle(
              color: Color(0xFF000000), fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: const TextStyle(color: Color(0xFF544C4C)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          suffixIcon:
              const Icon(Icons.calendar_today, color: Color(0xFF544C4C)),
        ),
        readOnly: true,
        onTap: () {
          // Handle date picker here
        },
      ),
    );
  }

  Widget buildDropdownField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: InputDecorator(
        decoration: InputDecoration(
          labelStyle: const TextStyle(
              color: Color(0xFF000000), fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            isDense: true,
            onChanged: (String? newValue) {
              // Handle change here
            },
            items: <String>['Nigeria', 'USA', 'Canada', 'UK']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
