import 'package:flutter/material.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
          'assets/car_image.jpg',
           height: 200, // Встановіть бажану висоту для зображення
            fit: BoxFit.contain, // Масштабувати зображення так, щоб воно вмістилося у вказаній висоті
),
          SizedBox(height: 20),
          Text(
            'Назва автомобіля',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Рік випуску: 2023',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Ціна: \$25,000',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
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
      ),
    );
  }
}
