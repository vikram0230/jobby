import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RecentCard extends StatelessWidget {
  final Widget companyLogo;
  final String companyName;
  final String designation;
  final int salary;

  const RecentCard({
    this.companyLogo,
    this.companyName,
    this.designation,
    this.salary,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          Container(
            width: 50,
            color: Colors.black,
            child: companyLogo,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    designation,
                    style: TextStyle(
                      fontSize: 16,
                      color: darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    companyName,
                    style: TextStyle(
                      fontSize: 13,
                      color: darkGrey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              '\$$salary/h',
              style: TextStyle(
                fontSize: 20,
                color: darkGrey,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
      padding: EdgeInsets.all(15),
      height: size.width * 0.18,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
