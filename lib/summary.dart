import 'package:flutter/material.dart';
class Summary extends StatelessWidget {
  const Summary(this.summaryData,{super.key});
  final List<Map<String ,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 350,
      child: SingleChildScrollView(
        child: Column(

          children: [
            ...summaryData.map((e) => Column(
        children: [
        Row(
        children: [
        CircleAvatar(
          radius: 16,
        backgroundColor: e['user_answer']== e['correct_answer']
            ?Colors.green
            :Colors.red,

        child: Text(
        ((e['question_index'] as int) + 1).toString(),
        ),
        ),
        const SizedBox(
        width: 15,
        ),
        Expanded(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        e['question'].toString(),
  style: TextStyle(
  color: Colors.purple[900],
  fontWeight: FontWeight.bold),
  ),
  const SizedBox(
  height: 5,
  ),
  Text(e['user_answer'].toString(),
  style: TextStyle(
  color: Colors.orange[500],
  )),
  Text(
  e['correct_answer'].toString(),
  style: TextStyle(
  color: Colors.pink[100],
  fontWeight: FontWeight.bold),
  ),
  ],
  ),
  ),
  ],
  ),
  const SizedBox(
  height: 20,
  )
  ],
  ),
  ),

          ],
        ),
      ),
    );
  }
}
