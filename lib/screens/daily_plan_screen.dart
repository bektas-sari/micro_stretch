import 'package:flutter/material.dart';

class DailyPlanScreen extends StatelessWidget {
  const DailyPlanScreen({super.key});

  final Map<String, List<String>> program = const {
    'Morning': [
      'Neck Rolls',
      'Shoulder Shrugs',
      'Cat-Cow',
      'Cobra Stretch',
      'Ankle Rotations'
    ],
    'Midday': [
      'Knee to Chest',
      'Back Stretch',
      'Hip Rotation',
      'Deep Breaths'
    ],
    'Afternoon': [
      'Seated Twist',
      'Side Stretch',
      'Mini Sun Salutation',
      'Heel Raises'
    ],
    'Evening': [
      'Child’s Pose',
      'Legs on Wall',
      'Bridge Pose',
      'Deep Breaths'
    ],
  };

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Daily Plan')),
    body: ListView(
      children: program.entries
          .map((e) => ExpansionTile(
        title: Text(e.key,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        children:
        e.value.map((m) => ListTile(title: Text(m))).toList(),
      ))
          .toList(),
    ),
  );
}
