import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  final List<Map<String, String>> educationData = const [
    {
      'year': '2026',
      'degree': 'MCA',
      'institute': 'R.B. INSTITUTE OF TECHNOLOGY',
    },
    {
      'year': '2024',
      'degree': 'BCA',
      'institute': 'C.U. SHAH INSTITUTE OF COMPUTER APPLICATION',
    },
    {
      'year': '2021',
      'degree': '12th Std',
      'institute': 'JIVAN PRAKASH VIDHYAVIHAR',
    },
    {
      'year': '2019',
      'degree': '10th Std',
      'institute': 'JIVAN PRAKASH VIDHYAVIHAR',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double tileChildWidth = screenWidth * 0.4;

    return Container(
      height: 880,

      // width: screenWidth < 900 ? screenWidth * 0.9 : screenWidth * 0.6,
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
          ? context.screenWidth * 0.5
          : context.screenWidth * 0.4,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            "Education",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Timeline
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(educationData.length, (index) {
              final item = educationData[index];
              final isFirst = index == 0;
              final isLast = index == educationData.length - 1;
              final isLeft = index % 2 != 0;

              Widget card = SizedBox(
                width: tileChildWidth,
                child: Card(
                  //color: Color(0xFFFFB6C1),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['degree']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(item['institute']!),
                        const SizedBox(height: 4),
                        Text(
                          item['year']!,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              );

              return TimelineTile(
                alignment: TimelineAlign.center,
                isFirst: isFirst,
                isLast: isLast,
                indicatorStyle: const IndicatorStyle(
                  width: 20,
                  color: Colors.pinkAccent,
                  padding: EdgeInsets.all(6),
                ),
                beforeLineStyle: const LineStyle(
                  color: Colors.grey,
                  thickness: 2,
                ),
                afterLineStyle: const LineStyle(
                  color: Colors.grey,
                  thickness: 2,
                ),
                startChild: isLeft ? card : const SizedBox(width: 0),
                endChild: !isLeft ? card : const SizedBox(width: 0),
              );
            }),
          ),
        ],
      ),
    );
  }
}
