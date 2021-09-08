import 'package:flutter/material.dart';
import 'package:queue_booking_app/Components/coustom_bottom_nav_bar.dart';
import 'package:queue_booking_app/Screen/Food_List/Thai_food/component/Thai_food_body.dart';

import '../../../enum.dart';

class JapanFood extends StatefulWidget {
  @override
  _JapanFoodState createState() => _JapanFoodState();
}

class _JapanFoodState extends State<JapanFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Japan Food"),
      ),
      body: Body(),
      bottomNavigationBar: CuttomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
