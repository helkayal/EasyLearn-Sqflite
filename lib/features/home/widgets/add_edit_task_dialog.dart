import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';
import 'package:task13_sqflite/features/home/model/tasks_model.dart';

class AddEditTaskDialog extends StatefulWidget {
  final TaskModel? task;
  final Function(TaskModel) onSave;

  const AddEditTaskDialog({super.key, this.task, required this.onSave});

  @override
  State<AddEditTaskDialog> createState() => _AddEditTaskDialogState();
}

class _AddEditTaskDialogState extends State<AddEditTaskDialog> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      _titleController.text = widget.task!.title;
      _descriptionController.text = widget.task!.description ?? '';
    }
  }

  void _save() {
    if (_titleController.text.trim().isEmpty) return;

    final task = TaskModel(
      id: widget.task?.id,
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim(),
      createdAt: widget.task?.createdAt,
    );

    widget.onSave(task);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.task == null ? AppString.addTask : AppString.editTask),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: AppString.title),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _descriptionController,
            maxLines: 4,
            minLines: 2,
            decoration: const InputDecoration(
              labelText: AppString.description,
              alignLabelWithHint: true,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppString.cancel),
        ),
        ElevatedButton(onPressed: _save, child: const Text(AppString.save)),
      ],
    );
  }
}
