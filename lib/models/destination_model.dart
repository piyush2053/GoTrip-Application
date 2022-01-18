import 'activity_model.dart';
import 'hotel_model.dart';
import 'package:gotrip/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/manali.jpg',
    city: 'Manali',
    country: 'India',
    description: 'One of the most popular hill stations in Himachal.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/mussoorie.jpg',
    city: 'Mussoorie',
    country: 'India',
    description: 'known as Queen of the Hills in India.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/kedarnath.jpg',
    city: 'Kedarnath',
    country: 'India',
    description: 'Famous Temple of God Shiv.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit Capital of India for an amazing adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/rishikesh.jpg',
    city: 'Rishikesh',
    country: 'India',
    description: 'It is center for yoga and meditation.',
    activities: activities,
  ),
];

List<Destination> destinationsM = [
  Destination(
    imageUrl: 'assets/images/goa.jpg',
    city: 'Goa',
    country: 'India',
    description: 'Goa is a state with coastlines the Arabian Sea.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/jaipur.PNG',
    city: 'Jaipur',
    country: 'India',
    description: 'Jaipur is famous as Pink City of India.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/pachmarhi.jpg',
    city: 'Pachmarhi',
    country: 'India',
    description: 'One of the most popular hill stations in Himachal.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/kanha.jpg',
    city: 'Kanha',
    country: 'India',
    description: 'Largest National Park in central India.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/gwalior.jpg',
    city: 'Gwalior',
    country: 'India',
    description: 'It is a historic city located in Madhya Pradesh.',
    activities: activities,
  ),
];
