import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: const Text(
              'Ut est amet consectetur esse proident. Aliqua qui dolore commodo esse eu duis esse occaecat ex id mollit dolor deserunt. Labore anim consectetur eu mollit tempor labore magna enim qui ad laboris nostrud officia cupidatat.',
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.room_outlined,
            text: 'LOCATION',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
