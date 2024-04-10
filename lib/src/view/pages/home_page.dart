import 'package:authentication_app/src/shared/components/card_task_component.dart';
import 'package:authentication_app/src/shared/components/folder_contents_component.dart';
import 'package:authentication_app/src/shared/components/navigation_bar_component.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomePage extends StatefulWidget {
  String email = '';

  HomePage({super.key, required this.email});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'my scheduled studies',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      // bottomNavigationBar: NavigationBarComponent(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SfCalendar(
                view: CalendarView.month,
                backgroundColor: Colors.white,
              ),
            ),
            CardTaskComponent(
              title: 'Teste',
              description: 'Teste',
              color: Colors.blue.shade100,
            ),
            CardTaskComponent(
              title: 'Teste',
              description: 'Teste',
              color: Colors.yellow.shade100,
            ),
            CardTaskComponent(
              title: 'Teste',
              description: 'Teste',
              color: Colors.pink.shade100,
            ),
            CardTaskComponent(
              title: 'Teste',
              description: 'Teste',
              color: Colors.green.shade100,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Colors.green.shade100,
                icon: Icon(Icons.add),
                label: Text("Add new Task"),
              ),
            )
            // SizedBox(
            //   height: MediaQuery.of(context)
            //       .size
            //       .height, // Defina a altura desejada aqui
            //   child: FolderContentComponent(),
            // ),
          ],
        ),
      ),
    );
  }
}
