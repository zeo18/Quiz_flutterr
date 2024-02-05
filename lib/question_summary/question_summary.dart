import 'package:flutter/material.dart';
import 'package:adv_basics/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}

/*children: summaryData.map(
            (data) {
              return Row(
                children: [
                  SizedBox(
                    height: 68,
                    child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                            backgroundColor: Colors.yellow, fontSize: 20)),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question'] as String),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(data['user_answer'] as String),
                        Text(data['correct_answer'] as String),
                      ],
                    ),
                  )
                ],
              );
           },
          ).toList(), */