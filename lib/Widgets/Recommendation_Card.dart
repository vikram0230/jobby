import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendationCard extends StatelessWidget {
  final Widget companyLogo;
  final String designation;
  final String duration;
  final double salary;

  const RecommendationCard({
    this.companyLogo,
    this.designation,
    this.salary,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              companyLogo,
              Container(
                child: Text(
                  duration,
                  style: TextStyle(fontSize: 13),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  designation,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$${salary.toInt().toString()}/h',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      padding: EdgeInsets.all(20),
      width: size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: blue,
      ),
    );
  }
}
