import 'package:flutter/material.dart';

class VeganPage extends StatefulWidget {
  @override
  _VeganPageState createState() => _VeganPageState();
}

class _VeganPageState extends State<VeganPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegan Page'),
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
                        Navigator.pushNamed(context, '/mealplan');// Add action for first image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('DRINKS'),
                          Image.asset('assets/images/veg1.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Second Image with Text

                    const SizedBox(height: 10),
                    // Third Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for third image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Chickpea and Spinach curry'),
                          Image.asset('assets/images/v2.jpeg'),
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
                          const Text('Chickpea Salad Sandwich'),
                          Image.asset('assets/images/v3.jpg'),
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
                          const Text('Chickpea Salad with Cucumber and Cherry Tomato'),
                          Image.asset('assets/images/v4.jpeg'),
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
                          const Text('Coconut Curry lentil soup'),
                          Image.asset('assets/images/v5.jpeg'),
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
                          const Text('Eggplant and Zucchini Lasagna'),
                          Image.asset('assets/images/v6.jpg')
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
                          const Text('Lentil Soup with carrots and kale'),
                          Image.asset('assets/images/v7.jpeg'),
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
                          const Text('Mushroom Risoto'),
                          Image.asset('assets/images/v8.jpeg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // tenth Image with Text
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/mealplan');// Add action for tenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Quinoa salad with Roasted Vegetables'),
                          Image.asset('assets/images/v9.jpeg'),
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
                          const Text('  Spinach and Mushroom Omlette'),
                          Image.asset('assets/images/v10.jpeg'),
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
                          const Text('Stir-fried tofu with vegetables'),
                          Image.asset('assets/images/v11.jpg'),
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
                          const Text('Sweet Potato and Black Bean Enchiladas'),
                          Image.asset('assets/images/v12.jpeg'),
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
                          const Text('Vegan Breakfast Burrito'),
                          Image.asset('assets/images/v13.jpeg'),
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
                          const Text('Vegan Buddha Bowl'),
                          Image.asset('assets/images/v14.jpg'),
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
                          const Text('Vegan Chili'),
                          Image.asset('assets/images/v15.jpeg'),
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
                          const Text('Vegan Lentil Soup'),
                          Image.asset('assets/images/v16.jpeg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eighteenth Image with Text
                    GestureDetector(
                      onTap: () {
                       Navigator.pushNamed(context, '/mealplan'); // Add action for eighteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Vegan Pad Thai'),
                          Image.asset('assets/images/v17.jpeg'),

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

