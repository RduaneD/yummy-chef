import 'package:flutter/material.dart';
import 'recipe_detail_page.dart';

class RecipeListPage extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    // Data resep seperti yang telah Anda berikan
    // ...
    {
      'name': 'Cendol',
      'image': 'assets/cendol.jpg',
      'description':
          'Minuman manis khas Indonesia yang terbuat dari cendol, santan, dan gula merah.',
      'ingredients': ['Cendol', 'Santan', 'Gula merah', 'Es serut'],
      'instructions': [
        'Campurkan cendol dengan santan.',
        'Tambahkan gula merah sesuai selera.',
        'Aduk rata dan sajikan dengan es serut.'
      ]
    },
    {
      'name': 'Pizza',
      'image': 'assets/pizza.jpg',
      'description':
          'Makanan Italia yang populer dengan berbagai topping di atas roti pizza.',
      'ingredients': [
        'Adonan pizza',
        'Saus tomat',
        'Keju mozarella',
        'Topping pilihan (sosis, jamur, paprika, dll.)'
      ],
      'instructions': [
        'Siapkan adonan pizza dan ratakan di atas loyang.',
        'Oleskan saus tomat di atas adonan.',
        'Tambahkan keju mozarella dan topping pilihan.',
        'Panggang dalam oven hingga keju meleleh dan adonan matang.'
      ]
    },
    {
      'name': 'Nasi Goreng',
      'image': 'assets/nasi_goreng.jpg',
      'description':
          'Nasi yang digoreng dengan bumbu khas dan ditambahkan berbagai bahan seperti ayam, telur, dan sayuran.',
      'ingredients': [
        'Nasi putih',
        'Telur',
        'Ayam suwir',
        'Bawang merah',
        'Bawang putih',
        'Kecap manis',
        'Sayuran (wortel, kacang polong, dll.)',
        'Minyak goreng'
      ],
      'instructions': [
        'Tumis bawang merah dan bawang putih hingga harum.',
        'Tambahkan ayam suwir dan sayuran, aduk rata.',
        'Masukkan nasi putih dan kecap manis, aduk hingga semua bahan tercampur.',
        'Goreng telur dan tambahkan ke dalam nasi goreng sebelum disajikan.'
      ]
    },
    {
      'name': 'Apple Pie',
      'image': 'assets/Apple_Pie.jpg',
      'description':
          'Pai apel klasik dengan isian apel manis dan rempah yang dipanggang dalam kulit pai.',
      'ingredients': [
        'Kulit pai',
        'Apel',
        'Gula',
        'Kayu manis',
        'Garam',
        'Mentega'
      ],
      'instructions': [
        'Siapkan kulit pai dan letakkan di dalam loyang.',
        'Campurkan apel dengan gula dan kayu manis.',
        'Letakkan campuran apel di atas kulit pai.',
        'Tutup dengan kulit pai lainnya atau hias sesuai selera.',
        'Panggang dalam oven hingga kulit pai berwarna keemasan.'
      ]
    },
    {
      'name': 'Burger',
      'image': 'assets/burger.jpg',
      'description':
          'Burger lezat dengan daging sapi, keju, selada, dan tomat dalam roti burger.',
      'ingredients': [
        'Daging sapi cincang',
        'Roti burger',
        'Keju',
        'Selada',
        'Tomat',
        'Mayones',
        'Ketchup'
      ],
      'instructions': [
        'Bentuk daging sapi cincang menjadi patties dan panggang hingga matang.',
        'Roti burger dipanggang sebentar.',
        'Letakkan patties di atas roti, tambahkan keju, selada, dan tomat.',
        'Oleskan mayones dan ketchup sebelum menutup burger dengan roti atas.'
      ]
    },
    {
      'name': 'Clam Chowder',
      'image': 'assets/Clam_Chowder.jpg',
      'description': 'Sup krim kental dengan kerang yang gurih dan lezat.',
      'ingredients': [
        'Kerang',
        'Krim kental',
        'Kentang',
        'Bawang bombay',
        'Bawang putih',
        'Kaldu ikan',
        'Garam dan merica'
      ],
      'instructions': [
        'Tumis bawang bombay dan bawang putih hingga harum.',
        'Tambahkan kentang dan kaldu ikan, masak hingga kentang empuk.',
        'Masukkan kerang dan krim kental, masak hingga semua bahan tercampur rata.',
        'Bumbui dengan garam dan merica, sajikan hangat.'
      ]
    },
    {
      'name': 'Es Kopi Susu',
      'image': 'assets/es_kopi_susu.jpg',
      'description': 'Minuman kopi dingin dengan tambahan susu yang creamy.',
      'ingredients': ['Kopi', 'Susu', 'Gula', 'Es batu'],
      'instructions': [
        'Seduh kopi dan biarkan dingin.',
        'Campurkan kopi dengan susu dan gula sesuai selera.',
        'Tambahkan es batu dan aduk rata sebelum disajikan.'
      ]
    },
    {
      'name': 'Freakshake',
      'image': 'assets/Freakshake.jpg',
      'description':
          'Milkshake dengan berbagai topping seperti whipped cream, cokelat, dan permen.',
      'ingredients': ['Es krim', 'Susu', 'Whipped cream', 'Cokelat', 'Permen'],
      'instructions': [
        'Campurkan es krim dan susu dalam blender, haluskan.',
        'Tuang milkshake ke dalam gelas.',
        'Tambahkan whipped cream, cokelat, dan permen di atasnya.',
        'Sajikan dengan sedotan.'
      ]
    },
    {
      'name': 'Kimchi',
      'image': 'assets/Kimchi.jpg',
      'description':
          'Makanan fermentasi khas Korea yang terbuat dari sayuran dan bumbu pedas.',
      'ingredients': [
        'Kubis',
        'Bumbu kimchi (bisa dibeli siap pakai)',
        'Bawang putih',
        'Jahe',
        'Garam'
      ],
      'instructions': [
        'Cuci dan potong kubis, taburi garam, dan biarkan selama beberapa jam.',
        'Bilas kubis dan campurkan dengan bumbu kimchi, bawang putih, dan jahe.',
        'Fermentasi dalam wadah tertutup selama beberapa hari.'
      ]
    },
    {
      'name': 'Lumpia',
      'image': 'assets/lumpia.jpg',
      'description': 'Spring roll khas Asia dengan isian daging dan sayuran.',
      'ingredients': [
        'Kulit lumpia',
        'Daging cincang',
        'Sayuran (wortel, kol)',
        'Bawang putih',
        'Bawang bombay',
        'Kecap manis'
      ],
      'instructions': [
        'Tumis bawang putih dan bawang bombay hingga harum.',
        'Tambahkan daging dan sayuran, masak hingga matang.',
        'Gulung campuran daging dalam kulit lumpia dan goreng hingga kecokelatan.'
      ]
    },
    {
      'name': 'Nem Chua Rán',
      'image': 'assets/Nem_Chua_Rán.jpg',
      'description': 'Fried spring rolls Vietnam dengan daging babi.',
      'ingredients': [
        'Daging babi cincang',
        'Kulit lumpia',
        'Bumbu Vietnam',
        'Minyak goreng'
      ],
      'instructions': [
        'Campurkan daging babi dengan bumbu Vietnam.',
        'Gulung dalam kulit lumpia dan rapatkan ujungnya.',
        'Goreng hingga berwarna keemasan dan matang.'
      ]
    },
    {
      'name': 'Nigiri Sushi',
      'image': 'assets/Nigiri_Sushi.jpg',
      'description':
          'Sushi dengan nasi yang dibentuk tangan dan dilapisi ikan segar.',
      'ingredients': [
        'Nasi sushi',
        'Ikan segar (salmon, tuna)',
        'Wasabi',
        'Kecap asin'
      ],
      'instructions': [
        'Bentuk nasi sushi menjadi bulat atau oval.',
        'Letakkan irisan ikan di atas nasi.',
        'Sajikan dengan wasabi dan kecap asin.'
      ]
    },
    {
      'name': 'Pad Thai',
      'image': 'assets/Pad_Thai.jpg',
      'description':
          'Mie Thailand yang digoreng dengan bumbu khas dan bahan seperti udang dan tauge.',
      'ingredients': [
        'Mie telur',
        'Udang',
        'Tauge',
        'Bawang merah',
        'Bawang putih',
        'Kecap ikan',
        'Gula merah'
      ],
      'instructions': [
        'Tumis bawang merah dan bawang putih hingga harum.',
        'Tambahkan udang dan masak hingga matang.',
        'Masukkan mie dan bumbu, aduk rata.',
        'Tambahkan tauge dan sajikan.'
      ]
    },
    {
      'name': 'Pho',
      'image': 'assets/Pho.jpg',
      'description':
          'Sup mie Vietnam dengan kaldu daging yang aromatik dan berbagai rempah.',
      'ingredients': [
        'Kaldu daging',
        'Mie pho',
        'Daging sapi',
        'Herbal Vietnam (daun ketumbar, basil)',
        'Lemon',
        'Chili'
      ],
      'instructions': [
        'Rebus kaldu daging hingga mendidih.',
        'Tambahkan mie pho dan masak hingga lembut.',
        'Sajikan dengan daging sapi, herbal, dan bahan pelengkap seperti lemon dan chili.'
      ]
    },
    {
      'name': 'Strawberry Trifle',
      'image': 'assets/strawberry_trifle.jpg',
      'description': 'Puding lapis dengan cake, cream, dan strawberry segar.',
      'ingredients': ['Cake vanila', 'Krim kental', 'Strawberry', 'Gula'],
      'instructions': [
        'Susun lapisan cake, krim, dan strawberry dalam gelas.',
        'Ulangi lapisan hingga semua bahan habis.',
        'Sajikan dingin.'
      ]
    },
    {
      'name': 'Tom Yum Goong',
      'image': 'assets/Tom_Yum_Goong.jpg',
      'description': 'Sup pedas dan asam Thailand dengan udang.',
      'ingredients': [
        'Kaldu',
        'Udang',
        'Daun jeruk nipis',
        'Serai',
        'Chili',
        'Lemon',
        'Gula'
      ],
      'instructions': [
        'Rebus kaldu dengan serai dan daun jeruk nipis.',
        'Tambahkan udang dan masak hingga matang.',
        'Bumbui dengan chili, lemon, dan gula, sajikan panas.'
      ]
    },
    {
      'name': 'Tonkotsu Ramen',
      'image': 'assets/Tonkotsu_Ramen.jpg',
      'description': 'Ramen dengan kaldu tulang babi yang kaya dan gurih.',
      'ingredients': [
        'Kaldu tulang babi',
        'Mie ramen',
        'Daging babi',
        'Bawang daun',
        'Bumbu ramen'
      ],
      'instructions': [
        'Rebus kaldu tulang babi hingga kaya.',
        'Masak mie ramen sesuai petunjuk.',
        'Tambahkan mie dan daging babi ke dalam kaldu.',
        'Sajikan dengan bawang daun dan bumbu ramen.'
      ]
    },
    {
      'name': 'Tteokbokki',
      'image': 'assets/Tteokbokki.jpg',
      'description': 'Kue beras Korea dalam saus pedas manis.',
      'ingredients': [
        'Kue beras',
        'Saus gochujang',
        'Gula',
        'Saus kedelai',
        'Bawang daun'
      ],
      'instructions': [
        'Masak kue beras dengan saus gochujang dan gula.',
        'Tambahkan saus kedelai untuk rasa umami.',
        'Sajikan dengan bawang daun.'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Resep'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Filter dan tombol cari
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.blueAccent.withOpacity(0.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      hint: Text('Pilih Jenis'),
                      items: ['Makanan', 'Minuman'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        // Tambahkan logika filter di sini
                      },
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: DropdownButton<String>(
                      hint: Text('Pilih Negara'),
                      items: [
                        'Jepang',
                        'Indonesia',
                        'Korea Selatan',
                        'USA',
                        'Thailand',
                        'Vietnam'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        // Tambahkan logika filter di sini
                      },
                    ),
                  ),
                  SizedBox(width: 8.0),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Tambahkan logika pencarian di sini
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(8.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailPage(
                            recipeName: recipe['name'],
                            recipeImage: recipe['image'],
                            recipeDescription: recipe['description'],
                            ingredients:
                                List<String>.from(recipe['ingredients']),
                            instructions:
                                List<String>.from(recipe['instructions']),
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      elevation: 4.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.0)),
                              child: Image.asset(
                                recipe['image'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recipe['name'],
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  recipe['description'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List Resep',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.grey,
          ),
        ],
        currentIndex: 1,
        onTap: (index) {
          // Navigasi berdasarkan item yang dipilih
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home');
              break;
            case 1:
              // Sudah di halaman ini
              break;
            case 2:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}
