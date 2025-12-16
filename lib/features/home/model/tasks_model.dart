class TaskModel {
  final int? id;
  final String title;
  final String? description;
  final DateTime createdAt;

  TaskModel({
    this.id,
    required this.title,
    this.description,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'] as int?,
      title: map['title'] as String,
      description: map['description'] as String?,
      createdAt: DateTime.parse(map['createdAt']),
    );
  }
}
