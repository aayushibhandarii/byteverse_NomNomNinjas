import 'package:flutter/material.dart';

class DietPage extends StatefulWidget {
  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Page'),
        leading: GestureDetector(
          onTap: () {
            // Add action for menu icon here
          },
          child: Image.asset('assets/images/icon1.png'), // Replace with your menu icon
        ),
        actions: [
          Builder( // Wrap the GestureDetector with Builder
            builder: (context) => GestureDetector(
              onTap: () {
                // Open the drawer when the notification icon is tapped
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/images/icon2.png'), // Replace with your notification icon
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Engine
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            // Section One
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Five images sliding left right
                  GestureDetector(
                    onTap: () {
                      // Add action for first image here
                    },
                    child: Image.asset('assets/images/food1.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add action for second image here
                    },
                    child: Image.asset('assets/images/food2.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add action for third image here
                    },
                    child: Image.asset('assets/images/food3.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add action for fourth image here
                    },
                    child: Image.asset('assets/images/food4.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add action for fifth image here
                    },
                    child: Image.asset('assets/images/food5.png'),
                  ),
                  const SizedBox(width: 10), // Add a SizedBox for spacing
                ],
              ),
            ),
            // Section Two - Vertical Scroll
            Container(
              height: 400,
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // First Image with Text
                    GestureDetector(
                      onTap: () {
                        _showChatOrCallDialog(context);// Add action for first image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('DIET FOOD'),
                          Image.asset('assets/images/gy2.png'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Second Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for second image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Grilled Chicken Salad with Mixed Greens and Balsamic Vinaigrette'),
                          Image.asset('assets/images/e1.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Third Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for third image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Quinoa and Vegetable Stir-Fry'),
                          Image.asset('assets/images/e2.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Fourth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for fourth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Zucchini Noodles with Pesto Sauce'),
                          Image.asset('assets/images/e3.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Fifth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for fifth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Baked Salmon with Steamed Broccoli'),
                          Image.asset('assets/images/e4.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Sixth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for sixth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('GGreek Yogurt Parfait with Fresh Berries and Granola'),
                          Image.asset('assets/images/e5.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    //seventh image text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for seventh image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Avocado Toast with Whole Wheat Bread'),
                          Image.asset('assets/images/e6.jpg')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eighth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for eighth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Veggie Wrap with Hummus and Spinach'),
                          Image.asset('assets/images/e7.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // ninth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for ninth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Lentil Soup with Carrots and Kale'),
                          Image.asset('assets/images/e8.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // tenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');
                        // Add action for tenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Cauliflower Fried Rice with Tofu'),
                          Image.asset('assets/images/e9.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eleventh Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for eleventh image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Turkey Lettuce Wraps with Cucumber and Tomato'),
                          Image.asset('assets/images/e10.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // twelfth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for twelfth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Black Bean and Corn Salad with Lime Dressing'),
                          Image.asset('assets/images/e11.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // thirteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for thirteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Grilled Vegetable Skewers with Herbed Quinoa'),
                          Image.asset('assets/images/e12.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // fourteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for fourteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Spinach and Mushroom Omelette'),
                          Image.asset('assets/images/e13.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // fifteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for fifteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Chickpea Salad with Cucumber and Cherry Tomatoes'),
                          Image.asset('assets/images/e14.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // sixteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for sixteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Baked Sweet Potato Fries with Garlic Aioli Dip'),
                          Image.asset('assets/images/e15.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // seventeenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for seventeenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Eggplant and Tomato Stacks with Basil Pesto'),
                          Image.asset('assets/images/e16.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eighteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for eighteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Broccoli and Cheese Stuffed Bell Peppers'),
                          Image.asset('assets/images/e17.jpg'),

                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/homepg');// No action needed for the first icon
              },
              child: Image.asset('assets/images/icon3.png'), // Replace with your home icon
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/gym');
              },
              child: Image.asset('assets/images/icon4.png'), // Replace with your search icon
            ),
            label: 'Gym',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/vegan');
              },
              child: Image.asset('assets/images/icon5.png'), // Replace with your favorites icon
            ),
            label: 'Vegan',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/diet');
              },
              child: Image.asset('assets/images/icon6.png'), // Replace with your cart icon
            ),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/drinks');
              },
              child: Image.asset('assets/images/icon7.png'), // Replace with your profile icon
            ),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.position.minScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: const Icon(Icons.keyboard_arrow_up),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOut,
              );
            },
            child: const Icon(Icons.keyboard_arrow_down),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('View your profile'),
              onTap: () {
                // Add action for Option 1 here
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Add action for Option 2 here
              },
            ),
            ListTile(
              title: const Text('Payments'),
              onTap: () {
                // Add action for Option 3 here
              },
            ),
            ListTile(
              title: const Text('My Account'),
              onTap: () {
                // Add action for Option 4 here
              },
            ),
            ListTile(
              title: const Text('Terms and Conditions'),
              onTap: () {
                // Add action for Option 5 here
              },
            ),
          ],
        ),
      ),
    );
  }
}
// Function to show the dialog box
void _showChatOrCallDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Do you really want to make a call"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            ElevatedButton(
              onPressed: ()
              {
                //function for chat
              },
              child: const Text("YES, I CONFIRM"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/diet');//function for call
              },
              child: const Text("NO"),
            ),
          ],
        ),
      );
    },
  );
}
