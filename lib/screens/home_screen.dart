import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:gotrip/widgets/destination_carousel.dart';
import 'package:gotrip/widgets/hotel_carousel.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.train,
    FontAwesomeIcons.car,
    FontAwesomeIcons.motorcycle,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Where would you like to Travel?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blueAccent,
        child: Row(
          children: [
            SizedBox(width: 23,),
            GestureDetector(
              onTap: (){
                  launchCaller();
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 2, 10, 2),
                    // width: 100,
                    // height: 35,
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.phone,
                          color: Colors.white70,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Confused? Call Us',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white, fontStyle: FontStyle.italic),
                        )
                      ],
                    ),
                  ),
            ),
          ],
        )
      ),
           
    );
  }
}

launchCaller() async {
  const url = "tel:8770162378";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
