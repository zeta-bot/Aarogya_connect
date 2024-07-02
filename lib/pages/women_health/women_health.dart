import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/utils/appbar.dart';
import 'package:aarogya_connect/utils/background_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class WomenHealthScreen extends StatefulWidget {
  static const id = "/home/women_health";
  const WomenHealthScreen({super.key});

  @override
  State<WomenHealthScreen> createState() => _WomenHealthScreenState();
}

class _WomenHealthScreenState extends State<WomenHealthScreen> {
  String? markdownContent;

  Future<void> _loadMarkdownFile() async {
    final String data = await rootBundle.loadString('assets/women_health.md');
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
      appBar: buildAppbar(AssetConstants.womenHealth, "Women Health"),
      body: Container(
        decoration: bgGradient,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: markdownContent != null
            ? Expanded(
                child: Markdown(
                data: markdownContent!,
                styleSheet: customStyleSheet,
              ))
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
