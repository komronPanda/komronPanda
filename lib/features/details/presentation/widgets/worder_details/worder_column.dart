import 'package:flutter/cupertino.dart';

class WOrderColumn extends StatelessWidget {
  final String name;
  final Widget child;
  const WOrderColumn({super.key, required this.name, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Color(0xFF171215),
              fontSize: 15,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 2,),
          child
        ],
      ),
    );
  }
}
