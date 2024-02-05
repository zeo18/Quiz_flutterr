import 'package:flutter/material.dart';
import 'package:adv_basics/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(itemData['user_answer'] as String),
              const SizedBox(
                height: 3,
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromRGBO(168, 152, 240, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
                 /* Expanded(
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
                ]
                  ),
            
        );
  }

  */
