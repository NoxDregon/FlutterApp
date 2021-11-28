import 'package:flutter/material.dart';

class  Register extends StatelessWidget {
  const Register ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}
class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _numberTextController = TextEditingController();
  final _timeController = TextEditingController();
  final _roomTypeTextController = TextEditingController();

  double _formProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearProgressIndicator(value: _formProgress),
          Text('Бронирование', style: Theme
              .of(context)
              .textTheme
              .headline4),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: InputDecoration(hintText: 'Имя'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _numberTextController,
              decoration: InputDecoration(hintText: 'Номер телефона'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _timeController,
              decoration: InputDecoration(hintText: 'Время'),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _roomTypeTextController,
              decoration: InputDecoration(hintText: 'Тип игрового зала'),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled) ? null : Colors.white;
              }),
              backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                return states.contains(MaterialState.disabled) ? null : Colors.blue;
              }),
            ),
            onPressed: null,
            child: Text('Забронировать'),
          ),
        ],
      ),
    );
  }
}