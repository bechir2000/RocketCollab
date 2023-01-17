import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collabapp/resources/color_manager.dart';
import '../QRCode/readqr.dart';
import '../projects/AddProjectSaif.dart';
import 'projectdashboard.dart';
import './AddButtons.dart';

class AddHome extends StatelessWidget {
  const AddHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(),
              child: ElevatedButton(
                onPressed:(){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddProject();
                    },
                  ),
                );},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 15.0,
                    textStyle:
                    const TextStyle(color: Colors.blueAccent)),
                child: const Text('Create Project'),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child:ElevatedButton(
              onPressed:(){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return readQr();
                  },
                ),
              );},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 15.0,
                  textStyle:
                  const TextStyle(color: Colors.blueAccent)),
              child: const Text( '  Join Project  '),
            ),

          )

        ],
      ),

              );

  }
}
