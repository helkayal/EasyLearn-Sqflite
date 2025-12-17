import 'package:flutter/material.dart';
import 'package:task13_sqflite/core/helpers/db_helper.dart';
import 'package:task13_sqflite/core/utils/app_string.dart';
import 'package:task13_sqflite/features/home/model/tasks_model.dart';
import 'package:task13_sqflite/features/home/views/no_data_found_view.dart';
import 'package:task13_sqflite/features/home/widgets/task_widget.dart';
import 'package:task13_sqflite/features/home/widgets/add_edit_task_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DBHelper _dbHelper = DBHelper();
  List<TaskModel> tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final data = await _dbHelper.getTasks();
    setState(() => tasks = data);
  }

  Future<void> _addTask(TaskModel task) async {
    await _dbHelper.insertTask(task);
    _loadTasks();
  }

  Future<void> _updateTask(TaskModel task) async {
    await _dbHelper.updateTask(task);
    _loadTasks();
  }

  Future<void> _deleteTask(int id) async {
    await _dbHelper.deleteTask(id);
    _loadTasks();
  }

  void _openTaskDialog({TaskModel? task}) {
    showDialog(
      context: context,
      builder: (_) => AddEditTaskDialog(
        task: task,
        onSave: (task) {
          if (task.id == null) {
            _addTask(task);
          } else {
            _updateTask(task);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppString.appTitle)),
      body: tasks.isEmpty
          ? const Center(child: NoDataFoundView())
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: tasks.length,
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TaskWidget(
                  task: task,
                  onEdit: () => _openTaskDialog(task: task),
                  onDelete: () => _deleteTask(task.id!),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTaskDialog(),
        child: const Icon(Icons.add, size: 30),
      ),
    );
  }
}
