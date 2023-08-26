import 'package:flutter/material.dart';
import '../utils/strings.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  final void Function(int) selectOption;
  const AppBar1(this.selectOption, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: TextButton(
        onPressed: () => selectOption(0),
        child: Text(
          appName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      actions: [
        ...pages.keys
            .map(
              (pageName) => TextButton(
                child: Text(pageName),
                onPressed: () => selectOption(
                  pages.keys.toList().indexOf(pageName),
                ),
              ),
            )
            .toList(),
        // TODO remove this and debug banner
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
      ],
    );
  }
}