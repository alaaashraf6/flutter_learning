import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  var searchTextControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: searchTextControll,
            keyboardType: TextInputType.text,
            validator: ( value) {
              if (value== null ||value.isEmpty ) {
                return 'search value cannot be empty';
              } else {
                return null;
              }
            },
             // Step 3: Use the controller
            decoration:const InputDecoration(
              labelText: 'Search',
              icon: Icon(Icons.search)
            ),
          )
        ],
      ),
    );
  }
}
