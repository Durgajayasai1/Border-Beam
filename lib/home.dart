import 'package:border_beam/components/border_beam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            title: Text(
              "_insane.dev",
              style: GoogleFonts.sora(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 250,
              child: BorderBeam(
                duration: 12,
                borderWidth: 3,
                colorFrom: Colors.lightGreenAccent,
                colorTo: Colors.pink,
                staticBorderColor: Colors.grey.shade800,
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds);
                    },
                    child: Text(
                      'Border Beam',
                      style: GoogleFonts.sora(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
