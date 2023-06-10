// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:flutter/material.dart';

import 'app_data.dart';
import 'website.dart';

void main() {
  runApp(MaterialApp(home: MyUI()));
}

class MyUI extends StatelessWidget {
  bool flag = true;
  Color? setColor() {
    if (flag == true) {
      flag = false;

      return (Colors.grey[200]);
    } else {
      flag = true;
      return Colors.white;
    }
  }

  convertMapToWidget() {
    List<Website> pages = app_data.map((e) => Website.fromMap(e)).toList();
    List<Widget> newList = pages.map((e) {
      return Container(
          color: setColor(),
          margin: EdgeInsets.fromLTRB(5, 2, 2, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Domain : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(e.domains.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Alpha Two Code : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(e.alphaTwoCode.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'country : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(e.country.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'web Pages : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    e.webPages.toString(),
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'name : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    e.name.toString(),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'state-province : ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(e.stateProvince.toString()),
                ],
              ),
              Divider(
                thickness: 5,
                color: Colors.black45,
              )
            ],
          ));
    }).toList();
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('University Information'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Our Universities',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.red[700],
              ),
            ),
          ),
          Column(children: convertMapToWidget()),
        ],
      )),
    );
  }
}
