import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hope_application/core/constant/Color.dart';
import '../widget/Patients/answer.dart';
import '../widget/Patients/card.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

bool show = false;

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bg,
        appBar: AppBar(
          backgroundColor: AppColor.primary,
          title: const Center(
              child: Text(
            "Breast Cancer test",
            style: TextStyle(color: AppColor.bg),
          )),
        ),
        body: SafeArea(
          child: show == false
              ? Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        show = true;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.bg,
                    ),
                    child: const Text(
                      "Start",
                      style: TextStyle(color: AppColor.black),
                    ),
                  ),
                )
              : QuizBody(),
        ));
  }
} //QuizBody(),

class QuizBody extends StatefulWidget {
  const QuizBody({super.key});

  @override
  State<QuizBody> createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  int current = 1;
  int total = 0;
  final List<Map<String, Object>> _quests = [
    {
      'text':
          'You can get breast cancer even if it does not run in your family.',
      'answer': [
        {'txt': 'yes', 'score': 1},
        {'txt': 'no', 'score': 0},
      ]
    },
    {
      'text': 'If breast cancer runs in your family, you are sure to get it.',
      'answer': [
        {'txt': 'yes', 'score': 0},
        {'txt': 'no', 'score': 1},
      ]
    },
    {
      'text': 'You still need mammograms after menopause.',
      'answer': [
        {'txt': 'yes', 'score': 1},
        {'txt': 'no', 'score': 0},
      ]
    },
    {
      'text': 'Men can get breast cancer.',
      'answer': [
        {'txt': 'yes', 'score': 1},
        {'txt': 'no', 'score': 0},
      ]
    },
    {
      'text': 'Surgery and needle biopsies can cause breast cancer to spread.',
      'answer': [
        {'txt': 'yes', 'score': 0},
        {'txt': 'no', 'score': 1},
      ]
    },
    {
      'text': 'There is nothing you can do to lower your breast cancer risk.',
      'answer': [
        {'txt': 'yes', 'score': 0},
        {'txt': 'no', 'score': 1},
      ]
    },
    {
      'text': 'Finding breast cancer early is the key to successful treatment.',
      'answer': [
        {'txt': 'yes', 'score': 1},
        {'txt': 'no', 'score': 0},
      ]
    },
    {
      'text': 'Older women are more likely to develop breast cancer.',
      'answer': [
        {'txt': 'yes', 'score': 1},
        {'txt': 'no', 'score': 0},
      ]
    },
    {
      'text': 'Most breast lumps are cancer.',
      'answer': [
        {'txt': 'yes', 'score': 0},
        {'txt': 'no', 'score': 1},
      ]
    },
  ];

  pressed(int score) {
    total += score;
    setState(() {
      current += 1;
      if (current == _quests.length + 1) {
        current -= 1;
        result();
      }
    });
    print("$score ->then : $total ");
  }

  result() {
    if (0 <= total && total <= 3) {
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: AppColor.bg,
                alignment: Alignment.center,
                title: const Icon(
                  AppColor.fownn,
                  color: AppColor.primary,
                  size: 45,
                ),
                content: Column(children: [
                  const Text(
                    'Try again',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("$total"),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Quiz()));
                        transitionDuration:
                        Duration.zero;
                      },
                      icon: const Icon(
                        Icons.restart_alt_rounded,
                        color: AppColor.primary,
                        size: 22,
                      ))
                ]),
              ));
    } else if (3 < total && total <= 5) {
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: AppColor.bg,
                alignment: Alignment.center,
                title: const Icon(
                  AppColor.meh,
                  color: AppColor.primary,
                  size: 45,
                ),
                content: Column(children: [
                  const Text(
                    'Good',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("$total"),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Quiz()));
                        transitionDuration:
                        Duration.zero;
                      },
                      icon: const Icon(
                        Icons.restart_alt_rounded,
                        color: AppColor.primary,
                        size: 22,
                      ))
                ]),
              ));
    } else {
      return showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: AppColor.bg,
                alignment: Alignment.center,
                title: const Icon(
                  AppColor.smile,
                  color: AppColor.primary,
                  size: 45,
                ),
                content: Column(children: [
                  const Text(
                    'Greet',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("$total"),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => const Quiz()));
                        transitionDuration:
                        Duration.zero;
                      },
                      icon: const Icon(
                        Icons.restart_alt_rounded,
                        color: AppColor.primary,
                        size: 22,
                      ))
                ]),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //niums
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 1; i < _quests.length + 1; i++)
                    Padding(
                        padding: const EdgeInsets.all(8.0), child: circles(i))
                ],
              ),
            ),
            AppColor.free,
            //card q
            QuestionCard(
              index: current,
              txt: _quests[current - 1]['text'] as String,
            ),
            AppColor.free,
            //answers
            ...(_quests[current - 1]['answer'] as List<Map<String, Object>>)
                .map((e) => Answer(
                    value: e['txt'] as String,
                    press: () => pressed(e['score'] as int)))
                .toList()
          ],
        ));
  }

  Widget circles(int index) {
    if (index == current) {
      return wait(index);
    } else if (index < current) {
      return seen(index);
    } else {
      return notSeen(index);
    }
  }

  Widget seen(int index) {
    return Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
            color: AppColor.primary, shape: BoxShape.circle),
        child: Center(
          child: Container(
            height: 35,
            width: 35,
            decoration:
                const BoxDecoration(color: AppColor.bg, shape: BoxShape.circle),
            child: Center(
                child: Text(
              "$index",
              style: TextStyle(color: AppColor.primary),
            )),
          ),
        ));
  }

  Widget wait(int index) {
    return Container(
      height: 40,
      width: 40,
      decoration:
          const BoxDecoration(color: AppColor.primary, shape: BoxShape.circle),
      child: Center(
        child: Text(
          "$index",
          style: TextStyle(color: AppColor.bg),
        ),
      ),
    );
  }

  Widget notSeen(int index) {
    return Container(
        height: 40,
        width: 40,
        decoration:
            const BoxDecoration(color: AppColor.gry, shape: BoxShape.circle),
        child: Center(
          child: Container(
            height: 35,
            width: 35,
            decoration:
                const BoxDecoration(color: AppColor.bg, shape: BoxShape.circle),
            child: Center(
                child: Text(
              "$index",
              style: TextStyle(color: AppColor.gry),
            )),
          ),
        ));
  }
}
