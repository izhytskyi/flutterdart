import 'package:flutter/material.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Map<String, String> answers = {
    'savor_preference': '',
    'favorite_aroma': '',
    'summer_beer': '',
    'alcohol_attitude': '',
    'celebration_style': '',
    'alternative_ingredients': '',
    'beer_volume': '',
    'taste_preference': '',
    'craft_brewery_attitude': '',
    'drinking_location': '',
  };

  void _updateAnswer(String question, String answer) {
    setState(() {
      answers[question] = answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тест: Яке ви пиво?'),
      ),
      body: ListView(
        children: <Widget>[
          _buildQuestion(
            'savor_preference',
            'Якій смаковій групі ви віддаєте перевагу?',
            ['Лагер', 'Ель', 'Стаут', 'Інше'],
          ),
          _buildQuestion(
            'favorite_aroma',
            'Обираєте аромати пива, які вам найбільше подобаються:',
            ['Хміль', 'Мед', 'Карамель', 'Фрукти'],
          ),
          _buildQuestion(
            'summer_beer',
            'Ваше улюблене пиво на літо:',
            ['Світле лагер', 'Вайсбір', 'IPA (Indian Pale Ale)', 'Інше'],
          ),
          _buildQuestion(
            'alcohol_attitude',
            'Як ви ставитесь до алкоголю в пиві?',
            [
              'Ви уникли б алкоголю',
              'Ви віддаєте перевагу пиву з меншим вмістом алкоголю',
              'Вас це не турбує',
              'Ви віддаєте перевагу пиву з високим вмістом алкоголю',
            ],
          ),
          _buildQuestion(
            'celebration_style',
            'Який стиль пива ви б вибрали на святкування?',
            ['Бельгійський Тріпель', 'Імперський стаут', 'Квас', 'Інше'],
          ),
          _buildQuestion(
            'alternative_ingredients',
            'Вам подобається пиво з альтернативними інгредієнтами (наприклад, гірка апельсинова шкірка)?',
            ['Так', 'Ні'],
          ),
          _buildQuestion(
            'beer_volume',
            'Який об\'єм пива ви обираєте на вечірці?',
            ['Пінта (0,568 л)', 'Келих (0,3 л)', 'Банка (0,33 л)', 'Інше'],
          ),
          _buildQuestion(
            'taste_preference',
            'Обираєте пиво з гірким або солодким смаком?',
            ['Гіркий', 'Солодкий', 'Залежить від настрою'],
          ),
          _buildQuestion(
            'craft_brewery_attitude',
            'Як ви відноситесь до крафтових пивоварень?',
            ['Підтримую і купую крафтове пиво', 'Пиво має бути відомою маркою', 'Інше'],
          ),
          _buildQuestion(
            'drinking_location',
            'Ваше улюблене місце для вживання пива:',
            ['Паб', 'Дім', 'Ресторан', 'Літня тераса'],
          ),
          ElevatedButton(
            onPressed: () {
              var result = 'Ви схожі на пиво: ';
              result += _determineBeerType();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(result)),
              );
            },
            child: Text('Завершити тест'),
          ),
        ],
      ),
    );
  }

  String _determineBeerType() {
    // Аналіз результатів тесту і визначення типу пива
    // Ви можете використовувати ваші власні умови для визначення результату тесту
    // В цьому прикладі просто з'єднання відповідей
    String beerType = '';
    for (var answer in answers.values) {
      beerType += answer + ' ';
    }
    return beerType;
  }

  Widget _buildQuestion(String question, String text, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text, style: TextStyle(fontSize: 18)),
        ),
        for (var option in options)
          RadioListTile(
            title: Text(option),
            value: option,
            groupValue: answers[question],
            onChanged: (String? value) {
              _updateAnswer(question, value!);
            },
          ),
      ],
    );
  }
}
