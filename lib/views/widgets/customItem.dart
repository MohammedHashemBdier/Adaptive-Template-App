import 'package:flutter/material.dart';

class CustomItemOne extends StatelessWidget {
  const CustomItemOne({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: color ?? Colors.grey[500],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class CustomItemTwo extends StatelessWidget {
  const CustomItemTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(10),
      width: Width,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
