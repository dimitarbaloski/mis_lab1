import 'package:flutter/material.dart';
import '../models/exam.dart';
import 'package:intl/intl.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context){
    final formattedDate =
        "${exam.dateTime.day.toString().padLeft(2, '0')}.${exam.dateTime.month.toString().padLeft(2, '0')}.${exam.dateTime.year}";
    final formattedTime =
        "${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}";

    final isPast = exam.dateTime.isBefore(DateTime.now());
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/exam_detail_screen", arguments: exam);
      },
      child: Card(
        color: isPast ? const Color.fromARGB(255, 97, 191, 100) : const Color.fromARGB(255, 122, 187, 235),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          title: Text(exam.subjectName,
                      style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16),
                  const SizedBox(width: 4),
                  Text("$formattedDate $formattedTime",
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),)
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 16),
                  const SizedBox(width: 4),
                  Text(exam.rooms.join(", "),
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
                ],
              )
            ],
          ),
        ),
        ),

    );
  }
  
}
