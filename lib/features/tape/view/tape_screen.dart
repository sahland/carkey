import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class TapeScreen extends StatefulWidget {
  const TapeScreen({super.key});

  @override
  State<TapeScreen> createState() => _TapeScreenState();
}

class _TapeScreenState extends State<TapeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            backgroundColor: theme.scaffoldBackgroundColor,
            title: Text(
              'Car&Key',
              style: GoogleFonts.poppins(
                  color: theme.primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 0.04,
                  letterSpacing: -0.41),
            ),
          )
        ],
      ),
    );
  }
}
