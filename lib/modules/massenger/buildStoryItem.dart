import 'package:flutter/material.dart';

class BuildStoryItem extends StatelessWidget {
  const BuildStoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/pw/AP1GczNYdB_B7CcR5jIrvWYAHyqzRE5-xT7Z9rHuM87_Cek0Ng2QuTzcLTFyAeMY4pu-9Ixi1yJNonFEij0ShzJEzqBsU07TEguKid3oW4t1Xdef1JjZ1rz6WGj4EHKkhKwR5AvyYuqcLMFjEGSuF959JtZC=w904-h904-s-no-gm?authuser=0'),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(bottom: 3, end: 5),
                child: CircleAvatar(
                  radius: 5.5,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 3, end: 5),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green[300],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            'Alaa Ashraf Alaa Ashraf',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
