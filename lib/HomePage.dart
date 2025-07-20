import 'package:flutter/material.dart';
import 'package:todoapp/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
    }
  
class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Buy potato', false],
    ['Walk the dog', false],
    ['Complete Flutter project', false],
    ['Read a book', false],
    ['Call mom', false],
    ['Prepare dinner', false],
    ['Exercise', false],
    ['Clean the house', false],
    ['Pay bills', false],
    ['Plan vacation', false],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        title: const Text('Simple TODO App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          return TodoList(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(index), 
          );
        },
      ),
    );
  }}