import 'package:flutter/material.dart';

class DrinksPage extends StatefulWidget {
  @override
  _DrinksPageState createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drinks Page'),
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
                          Image.asset('assets/images/d11.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Second Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for second image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Chocolate Brownie Shake'),
                          Image.asset('assets/images/d2.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Third Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for third image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Strawberry Banana Smoothie'),
                          Image.asset('assets/images/d3.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Fourth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for fourth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Mango Pineapple Frappe'),
                          Image.asset('assets/images/d4.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Fifth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for fifth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Iced Caramel latte'),
                          Image.asset('assets/images/d5.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Sixth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for sixth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Green Tea Matcha Smoothie'),
                          Image.asset('assets/images/d6.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    //seventh image text
                    GestureDetector(
                      onTap: () {
                        // Add action for seventh image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Blueberry Bliss Smoothie'),
                          Image.asset('assets/images/d7.jpg')
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eighth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for eighth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Cookie n Cream Shake'),
                          Image.asset('assets/images/d8.jpeg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // ninth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for ninth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Peanut Butter Banana Smoothie'),
                          Image.asset('assets/images/d9.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // tenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for tenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Raspberry Lemonade Cooler'),
                          Image.asset('assets/images/d10.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eleventh Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for eleventh image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Coconut Water Refresher'),
                          Image.asset('assets/images/d11.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // twelfth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for twelfth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Mint Chocolate Chip Shake'),
                          Image.asset('assets/images/d12.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // thirteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for thirteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Espresso Frappe'),
                          Image.asset('assets/images/d13.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // fourteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for fourteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Orange Creamsicle Smoothie'),
                          Image.asset('assets/images/d14.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // fifteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for fifteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Mocha Madness Shake'),
                          Image.asset('assets/images/d15.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // sixteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for sixteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Pineapple Coconut Smoothie'),
                          Image.asset('assets/images/d16.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // seventeenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for seventeenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Almond Joy Shake'),
                          Image.asset('assets/images/d17.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    // eighteenth Image with Text
                    GestureDetector(
                      onTap: () {
                        // Add action for eighteenth image in section two here
                      },
                      child: Column(
                        children: [
                          const Text('Watermelon Mint Cooler'),
                          Image.asset('assets/images/d18.jpg'),

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

