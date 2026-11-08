import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  TextEditingController addTextField = TextEditingController();
  TextEditingController searchTextField = TextEditingController();

  List<String> tasks = [];
  List<bool> isCompleteds = [];

  @override
  void dispose() {
    addTextField.dispose();
    searchTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredTasks = tasks.asMap().entries.where((entry) {
      return entry.value.toLowerCase().contains(
        searchTextField.text.trim().toLowerCase(),
      );
    }).toList();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text(
            "To Do List",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 15),

              TextField(
                controller: searchTextField,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Search",
                ),
              ),

              SizedBox(height: 25),

              Expanded(
                child: ListView.builder(
                  itemCount: filteredTasks.length,
                  itemBuilder: (context, index) {
                    final originalIndex = filteredTasks[index].key;
                    final task = filteredTasks[index].value;

                    return Card(
                      color: Color.fromARGB(255, 152, 83, 247),
                      child: ListTile(
                        leading: IconButton(
                          onPressed: () {
                            setState(() {
                              isCompleteds[originalIndex] =
                                  !isCompleteds[originalIndex];
                            });
                          },
                          icon: isCompleteds[originalIndex]
                              ? Icon(Icons.check_box)
                              : Icon(Icons.square_outlined),
                        ),

                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              tasks.removeAt(originalIndex);
                              isCompleteds.removeAt(originalIndex);
                            });
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),

                        title: Text(
                          task,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: isCompleteds[originalIndex]
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: addTextField,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter a new task",
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  FloatingActionButton(
                    onPressed: () {
                      String taskName = addTextField.text.trim();

                      if (taskName.isEmpty) {
                        return;
                      }

                      setState(() {
                        tasks.add(taskName);
                        isCompleteds.add(false);
                      });

                      addTextField.clear();
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
