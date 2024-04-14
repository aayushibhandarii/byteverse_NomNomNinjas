import 'package:flutter/material.dart';

class GymPage extends StatefulWidget {
  @override
  _GymPageState createState() => _GymPageState();
}

class _GymPageState extends State<GymPage> {
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
                          const Text('GYM FOOD'),
                          Image.asset('assets/images/gy3.png'),
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
                          const Text('Apple slices with Almond Butter'),
                          Image.asset('assets/images/apple slices with almond butter.jpg'),
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
                          const Text('Baked Chicken Breast with Green beans'),
                          Image.asset('assets/images/baked chicken breat with green beans.jpg'),
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
                          const Text('Cottage Cheese and Fruit Bowl'),
                          Image.asset('assets/images/Cottage Cheese and Fruit Bowl.jpg'),
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
                          const Text('Dried Fruit and Nut Mix'),
                          Image.asset('assets/images/Dried Fruit and Nut Mix.jpg'),
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
                          const Text('Greek Yogurt Parfait'),
                          Image.asset('assets/images/greek yogurt parfait.jpg'),
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
                          const Text('Grilled Chicken fillet with vegetable salad'),
                          Image.asset('assets/images/Grilled chicken fillet with vegetable salad.jpg')
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
                          const Text('Grilled Salmon with steamed broccoli and quinoa'),
                          Image.asset('assets/images/grilled salmon with steamed broccoli and quinoa.jpg'),
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
                          const Text('Oatmeal with banana and almonds'),
                          Image.asset('assets/images/oatmeal with banana and almonds.jpg'),
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
                          const Text('Protein Bar(choco chip, peanut butter'),
                          Image.asset('assets/images/protein bar(choco chip,  peanut butter).jpg'),
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
                          const Text('Protein pancakes with berry'),
                          Image.asset('assets/images/protein pancakes with berry.jpg'),
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
                          const Text('Protein Smoothie(banana, spinach, protein powder'),
                          Image.asset('assets/images/protein smoothie(banana, spinach, protein powder).jpg'),
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
                          const Text('Quinoa bowl with roasted vegetables and avocados'),
                          Image.asset('assets/images/quinoa bowl wit roasted vegetables and avacados.jpg'),
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
                          const Text('scrambled eggs with spinach toast '),
                          Image.asset('assets/images/scrambled eggs with spinach toast.jpg'),
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
                          const Text('stir-fried tofu with mixed mixed vegetables and brown rice'),
                          Image.asset('assets/images/stir-fried tofu with mixed vegetables ad brown rice.jpg'),
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
                          const Text('tuna salad sandwich with whole wheat bread  '),
                          Image.asset('assets/images/tuna salad sandwhich with whole wheat bread.jpg'),
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
                          const Text('turkey wrap with lettuce, tomato and whole wheat tortilla'),
                          Image.asset('assets/images/turkey wrap with lettuce, tomato and whole wheat tortilla.jpg'),
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
                          const Text('veggie stir fry with tofu'),
                          Image.asset('assets/images/veggie str fry with tofu.jpg'),

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
                Navigator.pushNamed(context, '/gym');//function for call
              },
              child: const Text("NO"),
            ),
          ],
        ),
      );
    },
  );
}