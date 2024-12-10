import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'package:shop_manager/res/constants/colors.dart';

Widget CustomCard(
    String title, List<String> buttonTitles, List<Color> buttonColors) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    child: Card(
      elevation: 4,
      color: AppColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title inside the card
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  
                ),
              ),
            ),
            // Row for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buttonTitles.map((buttonTitle) {
                final index = buttonTitles.indexOf(buttonTitle);
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        backgroundColor: buttonColors[index],
                      ),
                      onPressed: () {},
                      child: Text(
                        buttonTitle,
                        style: GoogleFonts.poppins(
                          fontSize: 12  ,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ),
  );
}
