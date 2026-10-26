import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lusica_Activity_1'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/Pavlova.png',
            height: 320,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Pavlova is a meringue-based dessert named after '
                  'the Russian ballerina Anna Pavlova. Pavlova features '
                  'a crisp crust and soft, light inside, topped with '
                  'fruit and whipped cream.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.35,
                    color: Colors.black87,
                  ),

                ),
                const SizedBox(height: 12),
                buildRatingRow(),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildIconTab(Icons.timer, 'PREP', '25 min'),
                    buildIconTab(Icons.restaurant, 'COOK', '1 hr'),
                    buildIconTab(Icons.people, 'FEEDS', '4-6'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRatingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < 3 ? Icons.star : Icons.star_border,
              color: Colors.yellow.shade700,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          '90 Reviews',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildIconTab(
    IconData icon,
    String label,
    String value,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Colors.yellow.shade700,
          size: 30,
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}