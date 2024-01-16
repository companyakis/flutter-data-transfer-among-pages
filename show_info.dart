import 'package:data_transfer_among_pages/employee_class.dart';
import 'package:flutter/material.dart';

class ShowInfo extends StatefulWidget {
  Employee employee;
  ShowInfo({required this.employee});
  @override
  State<ShowInfo> createState() => _ShowInfoState();
}

class _ShowInfoState extends State<ShowInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Show Info")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Employee info is below...",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple)),
          const SizedBox(height: 20),
          Text("Employee name: ${widget.employee.name}"),
          const SizedBox(height: 20),
          Text("Employee department: ${widget.employee.department}"),
          const SizedBox(height: 20),
          Text("Employee ID: ${widget.employee.id}"),
          const SizedBox(height: 20),
          Text("Employee birth year: ${widget.employee.birthYear}"),
          const SizedBox(height: 20),
          Text("Employee aged: ${widget.employee.isAged}"),
        ],
      )),
    );
  }
}
