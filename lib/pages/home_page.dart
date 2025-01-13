import 'package:dark_mode_tutorial/components/button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/box.dart';
import '../theme/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              color: Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
}
