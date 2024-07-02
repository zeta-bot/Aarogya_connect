import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/utils/appbar.dart';
import 'package:aarogya_connect/utils/background_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class DietDescription extends StatefulWidget {
  static const id = "home/balanced_diet/diet_description";
  const DietDescription({super.key});

  @override
  State<DietDescription> createState() => _DietDescriptionState();
}

class _DietDescriptionState extends State<DietDescription> {
  String? markdownContent;

  List<String> dietData = [
    "Babies and toddlers need foods from all five healthy food groups – vegetables, fruit, grain foods, dairy and protein. Healthy foods have nutrients that are important for growth, development and learning. Limit salty, fatty and sugary foods, low-fibre foods, and drinks with caffeine or a lot of sugar.",
    "Eating Healthy. The best way your teen can maintain a healthy weight is to eat a diet rich in whole grains, fruits, vegetables, no-fat or low-fat milk products, beans, eggs, fish, nuts, and lean meats. Eating healthfully means getting the right balance of nutrients.'",
    "In general, aim to eat whole foods, which are fresh or frozen, such as fruit and veggies, lean proteins, fish, and whole grains, to stay in optimal health. To keep convenience look for minimally processed whole foods such as canned beans and yogurt.",
    "The main types of food in this eating pattern include a variety of vegetables, fruits, whole grains, fat-free or low-fat dairy, seafood, poultry, and meat, as well as eggs, nuts, seeds, and soy products.",
  ];

  Future<void> _loadMarkdownFile() async {
    final String data = await rootBundle.loadString('assets/diet.md');
    setState(() {
      markdownContent = data;
    });
  }

  @override
  void initState() {
    _loadMarkdownFile();
    super.initState();
  }

  MarkdownStyleSheet customStyleSheet = MarkdownStyleSheet(
    a: TextStyle(color: Colors.blue), // Customize link styling
    p: TextStyle(fontSize: 16), // Adjust paragraph text size
    strong:
        TextStyle(fontWeight: FontWeight.bold), // Customize bold text styling
    textScaleFactor: 1.25, // Adjust text scale factor
    blockSpacing: 10, // Adjust block spacing
    h1: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    // Add other text styling as needed
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(AssetConstants.diet, "Balanced Diet"),
        body: Container(
          decoration: bgGradient,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: markdownContent != null
              ? Expanded(
                  child: Markdown(
                    data: markdownContent!,
                    styleSheet: customStyleSheet,
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ));
  }
}
