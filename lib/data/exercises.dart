class Exercise {
  final String title;
  final String description;
  final String benefit;
  final String targetArea;
  bool isFavorite;

  Exercise({
    required this.title,
    required this.description,
    required this.benefit,
    required this.targetArea,
    this.isFavorite = false,
  });
}

List<Exercise> allExercises = [
  Exercise(
    title: 'Neck Rolls',
    description: 'Slowly roll your head in a full circle.',
    benefit: 'Relieves neck tension.',
    targetArea: 'Neck',
  ),
  Exercise(
    title: 'Shoulder Shrugs',
    description: 'Lift shoulders to ears and release.',
    benefit: 'Loosens shoulder muscles.',
    targetArea: 'Shoulders',
  ),
];
