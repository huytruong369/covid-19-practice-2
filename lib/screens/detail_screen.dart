import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/weekly_chart.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailAppbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitleWithMoreIcon(),
                  const SizedBox(
                    height: 15,
                  ),
                  buildCaseNumber(context),
                  const Text(
                    'From Health Center',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: kTextMediumColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const WeeklyChart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildCaseNumber(BuildContext context) {
    return Row(
      children: [
        Text(
          '369 ',
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: kPrimaryColor,
                height: 1.2,
              ),
        ),
        const Text(
          '3.6% ',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        SvgPicture.asset('assets/icons/increase.svg'),
      ],
    );
  }

  Row buildTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'New Cases',
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset('assets/icons/more.svg'),
      ],
    );
  }

  AppBar buildDetailAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
          ),
        ),
      ],
    );
  }
}
