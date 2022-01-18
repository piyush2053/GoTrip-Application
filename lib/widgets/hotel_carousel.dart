import 'package:flutter/material.dart';


class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  Text(
                    'Go',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Trip',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        
        Padding(
             padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
             child: Text(
                  'Travel Good,Travel Safe\nSearch before yo ugo with GoTrip,we ensure that we try to provide you all the information and review regrding a place so that you can choose the best place to go to.\n\nRegards\nGoTrip©',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
           ),
      ],
    );
  }
}
