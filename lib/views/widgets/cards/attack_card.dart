import 'package:flutter/material.dart';
import 'package:poke_app/data/data.dart';

class AttackCard extends StatelessWidget {
  const AttackCard({
    Key? key,
    this.number,
    required this.attack,
    this.onTap,
  }) : super(key: key);

  final int? number;
  final AttackModel attack;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Color(attack.attackType.color),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                number == null
                    ? const SizedBox.shrink()
                    : Image.asset(
                        "assets/images/attacks_icons/${attack.attackType.name}$number.png",
                        width: 35,
                      ),
                const SizedBox(width: 8),
                Text(attack.name, style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
