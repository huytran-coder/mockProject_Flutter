import 'package:flutter/material.dart';

class ApihotelScreen extends StatefulWidget {
  const ApihotelScreen({super.key});

  @override
  State<ApihotelScreen> createState() => _ApihotelScreenState();
}

class _ApihotelScreenState extends State<ApihotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Danh sách nhà nghỉ',
          style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Text("Hoàng"),
          Text('Huy'),
          Text('Long')
        ],
      ),
    );
  }
}
