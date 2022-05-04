import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import 'line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int effectedNum;
  final Color iconColor;
  final VoidCallback? press;
  const InfoCard({
    Key? key,
    required this.title,
    required this.effectedNum,
    required this.iconColor,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: press,
        child: Container(
          width: constraints.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(9),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(.12),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/running.svg',
                        width: 13,
                        height: 13,
                        color: iconColor,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$effectedNum \n',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const TextSpan(
                            text: 'People',
                            style: TextStyle(
                              color: kTextColor,
                              fontSize: 12,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: LinerReportChart(),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
