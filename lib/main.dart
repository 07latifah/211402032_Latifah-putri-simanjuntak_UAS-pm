import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selamat Datang Latifah!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What do you want cook today?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 129, 129, 129),
                          ),
                        ),
                      ],
                    ),
                    AvatarFrame(
                      imageUrl: 'https://img.freepik.com/premium-vector/young-smiling-woman-standing-with-greeting-gesture-saying-hello-hi-bye-waving-with-hand-3d-vector-people-character-illustration-cartoon-minimal-style_365941-886.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1696550400&semt=ais',
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipes recomendation',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: AvatarFrame(
                              imageUrl: 'https://img.freepik.com/free-vector/detailed-nasi-lemak-dish_52683-62627.jpg',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 0),
                      const Text(
                        'Get your personalized recipes ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      const Text(
                        'recommendation in a 4 steps',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print('Get Recipe button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(150, 50), backgroundColor: const Color.fromARGB(255, 255, 193, 60),
                            ),
                            child: const Text('Get started'),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              print('Skip button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(150, 50),
                            ),
                            child: const Text('Skip'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular recipes',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the "See All" action here
                        print('See All Popular Recipe pressed');
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), // You can adjust the color
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecipeCard(
                        imageUrl: 'https://cdn1-production-images-kly.akamaized.net/I9_ifiSoEse6G8DkxvA1JoNfOzA=/0x194:5616x3359/640x360/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3048436/original/030475400_1581499756-shutterstock_413580649.jpg',
                        dishName: 'Spaghetti Bolognese',
                        time: '30-45 Menit',
                        difficulty: 'Medium',
                        chefName: 'Mariam belina',
                      ),
                      SizedBox(width: 20),
                      RecipeCard(
                        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9annuZWcYVZ29u5FVt5ucSLm0TYl-hwIToU3YK1AHXA&s',
                        dishName: 'Classic Beef Steak',
                        time: '30-45 Menit',
                        difficulty: 'Easy',
                        chefName: ' James Nikidav',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular creator',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle the "See All" action here
                        print('See All Popular Actor pressed');
                      },
                      child: const Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), // You can adjust the color
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AvatarRecipeCard(
                        imageUrl: 'https://sekolahterbaik.com/wp-content/uploads/2021/09/1.-Chef-1c.jpg',
                        chefName: 'I can Tooth',
                        time: '124',
                        difficulty: '41391',
                        dishName: 'James Nikidaw',
                      ),
                      SizedBox(width: 10),
                      AvatarRecipeCard(
                        imageUrl: 'https://akcdn.detik.net.id/visual/2015/11/03/3489e38b-0410-4bf5-a6b8-a85078a0a6fb_169.jpg?w=650',
                        chefName: 'You Pink Sun',
                        time: '98',
                        difficulty: '7323',
                        dishName: 'Miriam belina',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 219, 140, 20),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
  icon: Padding(
    padding: const EdgeInsets.only(top: 8.0), // Adjust the top padding as needed
    child: Container(
      width: 50,
      height: 18,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(189, 169, 130,0), 
            blurRadius: 30,
            spreadRadius: 10,
          ),
        ],
      ),
      child: const Icon(Icons.home, color: Colors.black),
    ),
  ),
  label: '',
),

          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Item 1',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Item 2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String imageUrl;
  final String dishName;
  final String time;
  final String difficulty;
  final String chefName;

  const RecipeCard({super.key, 
    required this.imageUrl,
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.chefName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 14,
                  color: Color.fromARGB(255, 129, 129, 129),
                ),
                const SizedBox(width: 4),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.black,
                ),
                const SizedBox(width: 4),
                Text(
                  difficulty,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 14,
                  color: Color.fromARGB(255, 129, 129, 129),
                ),
                const SizedBox(width: 4),
                Text(
                  chefName,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarRecipeCard extends StatelessWidget {
  final String dishName;
  final String time; // Assuming time should be replaced with a book icon
  final String difficulty; // Assuming difficulty should be replaced with a heart icon
  final String imageUrl; // Image URL for the frame
final String chefName;
  const AvatarRecipeCard({super.key, 
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.imageUrl,
    required this.chefName
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Color.fromARGB(255, 218, 218, 218), // You can change the background color
            ),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  imageUrl, // Use the specified image URL for the frame
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.book, // Change the icon to a book
                  size: 14,
                  color: Color.fromARGB(255, 129, 129, 129),
                ),
                const SizedBox(width: 6),
                Text(
                  time, // Assuming time is replaced with a book icon
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite, // Change the icon to a heart
                  size: 14,
                  color: Colors.black,
                ),
                const SizedBox(width: 4),
                Text(
                  difficulty, // Assuming difficulty is replaced with a heart icon
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarFrame extends StatelessWidget {
  final String imageUrl;

  const AvatarFrame({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}