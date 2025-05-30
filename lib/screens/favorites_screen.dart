import 'package:flutter/material.dart';
import '../data/exercises.dart';
import 'exercise_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favs = allExercises.where((e) => e.isFavorite).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: favs.isEmpty
          ? const Center(child: Text('No favorites yet.'))
          : ListView.builder(
        itemCount: favs.length,
        itemBuilder: (ctx, i) => Card(
          child: ListTile(
            title: Text(favs[i].title),
            subtitle: Text(favs[i].targetArea),
            onTap: () => Navigator.push(
              ctx,
              MaterialPageRoute(
                builder: (_) => ExerciseDetailScreen(exercise: favs[i]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
