import 'package:flutter/material.dart';

class BuildChatItem extends StatelessWidget {
  const BuildChatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
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
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 3, end: 5),
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
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Alaa Ashraf',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(children: [
                const Expanded(
                  child: Text(
                    'Hello Loly Hello',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                  ),
                ),
                const Text('02:00 pm')
                // const Text('2:00')
              ])
            ],
          ),
        )
      ],
    );
  }
}
