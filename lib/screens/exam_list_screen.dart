import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    final exams = [
      Exam(
        subjectName: 'Објектно ориентирано програмирање',
        dateTime: DateTime(2025, 11, 17, 8, 0),
        rooms: ['138', '215', '200ab', '200v', '13', '12', '2', '3'],
      ),
      Exam(
        subjectName: 'Бази на податоци',
        dateTime: DateTime(2025, 7, 20, 10, 0),
        rooms: ['138', '215', '200ab', '200v'],
      ),
      Exam(
        subjectName: 'Веројатност и статистика',
        dateTime: DateTime(2025, 12, 5, 12, 0),
        rooms: ['225', '226'],
      ),
      Exam(
        subjectName: 'Математика 2',
        dateTime: DateTime(2025, 13, 10, 9, 0),
        rooms: ['223', '225', '226'],
      ),
      Exam(
        subjectName: 'Оперативни системи',
        dateTime: DateTime(2025, 8, 15, 14, 0),
        rooms: ['138', '215', '200ab', '200v', '13', '12', '2', '3'],
      ),
      Exam(
        subjectName: 'Компјутерски мрежи',
        dateTime: DateTime(2025, 12, 18, 8, 0),
        rooms: [ '13', '12', '2', '3'],
      ),
      Exam(
        subjectName: 'Интернет технологии',
        dateTime: DateTime(2025, 13, 22, 11, 0),
        rooms: ['138', '215', '200ab', '200v', '13', '12', '2', '3'],
      ),
      Exam(
        subjectName: 'Објектно ориентирана анализа и дизајн',
        dateTime: DateTime(2025, 11, 22, 11, 0),
        rooms: ['Барака 1', 'Барака 2.2', 'Барака 2.1'],
      ),
      Exam(
        subjectName: 'Напредно програмирање',
        dateTime: DateTime(2025, 12, 22, 11, 0),
        rooms: ['215', '200ab'],
      ),
      Exam(
        subjectName: 'Структурно програмирање',
        dateTime: DateTime(2025, 9, 22, 11, 0),
        rooms: ['138', '215', '200ab', '200v', '13', '12', '2', '3'],
      ),
    ];

  
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред на испити - 221068'),
      ),
      body: Column(
        children: [
          
          Expanded(
            child: ListView.builder(
              itemCount: exams.length,
              itemBuilder: (context, index) {
                return ExamCard(exam: exams[index]);
              },
            ),
          ),

          
          Container(
            width: double.infinity,
            color: Colors.blueGrey[50],
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Вкупно испити: ${exams.length}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
