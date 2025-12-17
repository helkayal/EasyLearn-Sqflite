import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/theme/app_colors.dart';
import 'package:task13_sqflite/features/home/model/tasks_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskModel task;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const TaskWidget({
    super.key,
    required this.task,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  task.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.edit, color: AppColors.darkGreenColor),
                onPressed: onEdit,
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: AppColors.redColor),
                onPressed: onDelete,
              ),
            ],
          ),
          if (task.description != null && task.description!.isNotEmpty)
            Text(
              task.description!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
        ],
      ),
    );
  }
}
