import 'package:flutter/material.dart';

class GoBackAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  GoBackAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF353335),
      elevation: 0,
    );
  }
}
