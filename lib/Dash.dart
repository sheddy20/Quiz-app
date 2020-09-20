import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    final _icon = Icons.shopping_cart;
    final _icon1 = Icons.account_balance_wallet;
    final _icon2 = Icons.library_music;
    final _icon3 = Icons.attach_money;
    final _icon4 = Icons.group;
    return Scaffold(
      appBar: AppBar(
        title: Text('iLLUMINATI App'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350.0,
                height: 250.0,
                padding: EdgeInsets.all(5.0),
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(_icon),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(_icon1),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(_icon2),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(_icon3),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                  IconButton(
                    icon: Icon(_icon4),
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
