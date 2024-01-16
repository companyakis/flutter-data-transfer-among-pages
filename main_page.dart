import 'package:data_transfer_among_pages/employee_class.dart';
import 'package:data_transfer_among_pages/show_info.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Transfer among Pages")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("If you want to see employee info, click the button!"),
          SizedBox(height: 25),
          ElevatedButton(
              onPressed: () {
                var employee = Employee(
                    name: "Mustafa",
                    department: "Future Innovations",
                    id: 1,
                    birthYear: 2024,
                    isAged: false);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShowInfo(employee: employee)));
              },
              child: const Text("Employee Info"))
        ],
      )),
    );
  }
}
