import 'package:flutter/material.dart';

class MealPlan extends StatefulWidget {
  @override
  _MealPlanState createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  List<String> selectedDays = [];

  void _showChooseMealPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ChooseMealPage(selectedDays: selectedDays),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Build Your Meal'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var day in ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'])
            CheckboxListTile(
              title: Text(day),
              value: selectedDays.contains(day),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    if (selectedDays.length < 7) { // Adjusted maximum days to 7
                      selectedDays.add(day);
                    }
                  } else {
                    selectedDays.remove(day);
                  }
                });
              },
            ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: selectedDays.length < 3 ? null : _showChooseMealPage,
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}



class ChooseMealPage extends StatelessWidget {
  final List<String> selectedDays;

  const ChooseMealPage({required this.selectedDays});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Meal'),
      ),
      body: ListView.builder(
        itemCount: selectedDays.length,
        itemBuilder: (context, index) {
          final day = selectedDays[index];
          return ListTile(
            title: Text('Choose Meal for $day'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SelectMealPage(day: day),
              ));
            },
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          // Navigate to the confirmation screen
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ConfirmationScreen(selectedDays: selectedDays),
          ));
        },
        child: const Text('Confirm Selection'),
      ),
    );
  }
}

class SelectMealPage extends StatefulWidget {
  final String day;

  SelectMealPage({required this.day});

  @override
  _SelectMealPageState createState() => _SelectMealPageState();
}

class _SelectMealPageState extends State<SelectMealPage> {
  int quantity = 1;
  final double costPerMeal = 80; // Sample cost per meal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Meal for ${widget.day}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Select Quantity:',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    if (quantity > 1) {
                      quantity--;
                    }
                  });
                },
              ),
              Text(
                '$quantity',
                style: const TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    if (quantity < 5) {
                      quantity++;
                    }
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ConfirmationScreen extends StatelessWidget {
  final List<String> selectedDays;
  final int costPerMeal = 80; // Sample cost per meal

  ConfirmationScreen({required this.selectedDays});

  @override
  Widget build(BuildContext context) {
    int totalCost = selectedDays.length * costPerMeal;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Total Cost for Selected Days:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(
              '\Rs$totalCost',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment',
                  arguments: totalCost,);
              },// Navigate to a different screen



              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}

