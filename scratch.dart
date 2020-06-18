import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2result = await task2();
  task3(task2result);
}

void task1() {
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSecs = Duration(seconds: 3);
  String result;
  Future.delayed(threeSecs, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2data) {
  print('Task 3 complete and returns $task2data');
}
