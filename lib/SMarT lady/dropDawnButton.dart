import 'package:flutter/material.dart';

class DropDawn extends StatefulWidget {
  const DropDawn({Key? key}) : super(key: key);

  @override
  State<DropDawn> createState() => _DropDawn();
}

class _DropDawn extends State<DropDawn> {
  String Selectedmenu = 'One';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.language,
        color: Theme.of(context).colorScheme.primary,
        size: 24,
      ),
      // Callback that sets the selected popup menu item.
      onSelected: (item) {
        setState(() {});
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Türkmen',
          child: Text('Türkmen'),
        ),
        const PopupMenuItem<String>(
          value: 'Русский',
          child: Text('Русский'),
        ),
      ],
    );
  }
}
