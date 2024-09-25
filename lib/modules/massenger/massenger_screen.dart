import 'package:flutter/material.dart';
import 'package:learning_app_on_udemy/modules/massenger/buildChatItem.dart';
import 'package:learning_app_on_udemy/modules/massenger/buildStoryItem.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 16,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 23.0,
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/a/ACg8ocKGtGK_a7qjQrwLNxvZWDSNNv8JUGoy9HQ2yQFP5-aT5bUYDog=s360-c-no'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 15,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey[300]),
                child: const Row(
                  children: [Icon(Icons.search), Text('Search')],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 110.0,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, item) => const BuildStoryItem(),
                    separatorBuilder: (context, item) =>
                        const SizedBox(width: 10),
                    itemCount: 7),
              ),
              const SizedBox(
                  // height: 15,
                  ),
              SizedBox(
                // height: 500.0,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const BuildChatItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
