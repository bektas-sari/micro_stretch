import 'dart:math';
import 'package:flutter/material.dart';
import '../data/exercises.dart';
import 'exercise_detail_screen.dart';
import 'daily_plan_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String motivation;
  final List<String> motivations = [
    'A little stretch goes a long way!',
    'Move your body, clear your mind.',
    'Stretch and smile today!',
  ];

  @override
  void initState() {
    super.initState();
    motivation = motivations[Random().nextInt(motivations.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MicroStretch')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(motivation,
                style:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: allExercises.length,
                itemBuilder: (context, i) {
                  final ex = allExercises[i];
                  return Card(
                    child: ListTile(
                      title: Text(ex.title),
                      subtitle: Text(ex.targetArea),
                      trailing: IconButton(
                        icon: Icon(
                            ex.isFavorite ? Icons.favorite : Icons.favorite_border),
                        onPressed: () => setState(() => ex.isFavorite = !ex.isFavorite),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ExerciseDetailScreen(exercise: ex),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const DailyPlanScreen())),
                  child: const Text('Daily Plan'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const FavoritesScreen())),
                  child: const Text('Favorites'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
