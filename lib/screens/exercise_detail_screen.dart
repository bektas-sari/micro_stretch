import 'package:flutter/material.dart';
import '../data/exercises.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final Exercise exercise;
  const ExerciseDetailScreen({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(exercise.title)),
    body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title('Description'), Text(exercise.description),
          const SizedBox(height: 10),
          _title('Benefit'), Text(exercise.benefit),
          const SizedBox(height: 10),
          _title('Target Area'), Text(exercise.targetArea),
        ],
      ),
    ),
  );

  Widget _title(String text) =>
      Text(text, style: const TextStyle(fontWeight: FontWeight.bold));
}
