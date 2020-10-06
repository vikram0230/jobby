import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobby/Widgets/Recent_Card.dart';
import 'package:jobby/Widgets/Recommendation_Card.dart';
import 'package:jobby/constants.dart';

class HomeScreen extends StatefulWidget {
  static String route = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> recommendation = [];
  List<Widget> recent = [];

  getRecommendation() {
    for (var i = 0; i < 5; i++) {
      recommendation.add(
        RecommendationCard(
          companyLogo: Placeholder(
            fallbackHeight: 40,
            fallbackWidth: 40,
          ),
          duration: 'Full-Time',
          designation: 'Flutter UI/UX',
          salary: 40,
        ),
      );
    }
    return recommendation;
  }

  getRecent() {
    for (var i = 0; i < 5; i++) {
      recent.add(
        RecentCard(
          designation: 'Flutter Developer',
          companyName: 'Amazon Inc',
          salary: 60,
        ),
      );
    }
    return recent;
  }

  @override
  void initState() {
    super.initState();
    getRecommendation();
    getRecent();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.sort,
              color: darkGrey,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: darkGrey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.filter_list,
                color: darkGrey,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 20),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 30),
                child: Text(
                  'Developer\nJobs',
                  style: TextStyle(
                    fontSize: 30,
                    color: darkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Recommended for you',
                  style: TextStyle(
                    fontSize: 18,
                    color: darkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: size.width * 0.5,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return recommendation[index];
                  },
                  itemCount: recommendation.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 15, 15),
                child: Text(
                  'Recently Added',
                  style: TextStyle(
                    fontSize: 18,
                    color: darkGrey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // Column(
              //   children: recent,
              // ),
              ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20),
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return Container(height: 10,);
                },
                itemBuilder: (BuildContext context, int index) {
                  return recent[index];
                },
                itemCount: recent.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
