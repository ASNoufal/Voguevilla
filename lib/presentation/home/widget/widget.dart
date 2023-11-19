import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voguevilla/presentation/home/const/const.dart';

Widget appbartitle() {
  return Row(
    children: [
      Text(
        "VougeVilla",
        style: GoogleFonts.courgette(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

class SearchBarField extends StatelessWidget {
  const SearchBarField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: backgroundcolor,
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }
}
