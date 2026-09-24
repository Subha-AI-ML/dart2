class Task {
  final int id;
  final String title;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  void toggleStatus() {
    isCompleted = !isCompleted;
  }

  @override
  String toString() {
    final status = isCompleted ? '[✓]' : '[ ]';
    return '$id. $status $title';
  }
}

class TaskManager {
  final List<Task> _tasks = [];
  int _nextId = 1;

  void addTask(String title) {
    if (title.trim().isEmpty) {
      print('Error: Task title cannot be empty.');
      return;
    }
    final task = Task(id: _nextId++, title: title);
    _tasks.add(task);
    print('Added: "${task.title}"');
  }

  void listTasks() {
    if (_tasks.isEmpty) {
      print('\nNo tasks available.');
      return;
    }
    print('\n--- Your Task List ---');
    for (var task in _tasks) {
      print(task);
    }
  }

  void toggleTask(int id) {
    final index = _tasks.indexWhere((task) => task.id == id);
    if (index != -1) {
      _tasks[index].toggleStatus();
      print('Updated Task #$id status.');
    } else {
      print('Error: Task with ID $id not found.');
    }
  }
}

void main() {
  final manager = TaskManager();

  print('=== Dart Task Manager Demo ===');

  // 1. Add tasks
  manager.addTask('Learn Dart basics');
  manager.addTask('Understand Flutter state management');
  manager.addTask('Build a mobile app portfolio');

  // 2. View current tasks
  manager.listTasks();

  // 3. Mark task #1 as complete
  print('\nCompleting task #1...');
  manager.toggleTask(1);

  // 4. View updated task list
  manager.listTasks();
}