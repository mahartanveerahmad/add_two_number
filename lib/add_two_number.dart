import 'package:flutter/material.dart';

class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({super.key});

  @override
  State<AddTwoNumbers> createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  final num1 = TextEditingController();
  final num2 = TextEditingController();
  final tot = TextEditingController();
  int sum = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Two numbers"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.center,
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.blue, width: 2)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.center,
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Colors.green, width: 2)),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: TextField(
              textAlign: TextAlign.center,
              controller: tot,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: Colors.green, width: 2)),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: 200,
            height: 50,
            // color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                sum = int.parse(num1.text) + int.parse(num2.text);
                total = sum;
                tot.text = total.toString();
              },
              child: const Text(
                "Sum",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
