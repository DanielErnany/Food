import 'package:flutter/material.dart';

class FlavorTag extends StatelessWidget {
  final bool isSweet;
  const FlavorTag({super.key, required this.isSweet});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isSweet ? Colors.pink : Colors.brown,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isSweet ? Icons.cake : Icons.local_pizza, color: Colors.white),
          Text(
            isSweet ? "Doce" : "Sal",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
