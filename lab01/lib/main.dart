import 'package:flutter/material.dart';

class CarDetails {
  final String name;
  final int year;
  final double price;
  final String imageAsset;

  CarDetails(this.name, this.year, this.price, this.imageAsset);
}

final car = CarDetails('Назва автомобіля', 2023, 25000, 'assets/car_image.jpg');

void main() {
  runApp(CarListingApp());
}

class CarListingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Car Listing App'),
        ),
        body: CarListing(),
      ),
    );
  }
}

class CarListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Image.asset(
          car.imageAsset,
          height: MediaQuery.of(context).size.height * 0.3,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 20),
        Text(
          car.name,
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Рік випуску: ${car.year}',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Ціна: \$${car.price.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 18),
        ),
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Зараз у продажу! Звертайтеся за телефоном +1234567890',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
