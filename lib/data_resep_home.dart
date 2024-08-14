import 'package:flutter/material.dart';

// Data Resep
final Map<String, Map<String, dynamic>> recipes = {
  'Resep Pizza': {
    'imagePath': 'assets/pizza.jpg',
    'ingredients': [
      'Untuk Adonan Pizza',
      '2 1/4 sendok teh ragi instan (sekitar 1 sachet)',
      '1 1/2 cangkir air hangat (sekitar 40°C)',
      '3 1/2 cangkir tepung terigu',
      '2 sendok makan minyak zaitun',
      '1 sendok teh garam',
      '1 sendok teh gula',
      // Tambahkan bahan lainnya
    ],
    'instructions': [
      'Membuat Adonan Pizza',
      'Aktifkan Ragi: Dalam mangkuk kecil, campurkan air hangat, gula, dan ragi. Aduk dan biarkan selama sekitar 5-10 menit hingga berbusa.',
      'Campur Bahan Kering: Dalam mangkuk besar, campurkan tepung terigu dan garam.',
      'Buat Adonan: Buat lubang di tengah campuran tepung, tuangkan campuran ragi dan minyak zaitun. Aduk dengan sendok kayu atau tangan hingga membentuk adonan. Uleni selama sekitar 5-7 menit hingga adonan menjadi elastis dan tidak lengket.',
      'Istirahatkan Adonan: Letakkan adonan di dalam mangkuk yang sudah diolesi sedikit minyak. Tutup dengan kain bersih dan biarkan mengembang di tempat hangat selama sekitar 1 jam, hingga adonan menjadi dua kali lipat.',
      // Tambahkan instruksi lainnya
    ],
  },
  'Resep Cendol': {
    'imagePath': 'assets/cendol.jpg',
    'ingredients': [
      'Cendol',
      '100 gram tepung beras',
      '50 gram tepung hunkwe',
      '500 ml air pandan (dibuat dari 10 lembar daun pandan dan 300 ml air, lalu diblender dan disaring)',
      '1/4 sendok teh garam',
      'Air matang dan es batu secukupnya (untuk merendam cendol yang sudah matang)',
      'Kuah Santan',
      '500 ml santan dari 1 butir kelapa',
      '1/4 sendok teh garam',
      '2 lembar daun pandan, simpulkan',
      'Kuah Gula Merah',
      '250 gram gula merah, sisir halus',
      '100 gram gula pasir',
      '200 ml air',
      '2 lembar daun pandan, simpulkan',
    ],
    'instructions': [
      'Membuat Cendol',
      'Campurkan tepung beras, tepung hunkwe, air pandan, dan garam dalam panci. Aduk hingga rata.',
      'Masak adonan di atas api sedang sambil terus diaduk hingga mengental dan matang. Adonan akan berubah menjadi transparan dan agak lengket.',
      'Siapkan baskom berisi air matang dan es batu.',
      'Masukkan adonan yang sudah matang ke dalam cetakan cendol atau saringan dengan lubang besar, tekan-tekan hingga cendol keluar dan jatuh ke dalam baskom berisi air es. Diamkan beberapa saat hingga cendol mengeras. Tiriskan.',
      'Membuat Kuah Santan',
      'Campurkan santan, garam, dan daun pandan dalam panci.',
      'Masak di atas api sedang sambil terus diaduk hingga mendidih. Angkat dan dinginkan.',
      'Membuat Kuah Gula Merah',
      'Campurkan gula merah, gula pasir, air, dan daun pandan dalam panci.',
      'Masak di atas api sedang hingga gula larut dan kuah mendidih. Angkat dan saring. Dinginkan.',
      'Menyajikan Cendol',
      'Siapkan gelas atau mangkuk saji.',
      'Masukkan cendol yang sudah ditiriskan ke dalam gelas atau mangkuk.',
      'Tambahkan kuah santan dan kuah gula merah secukupnya.',
      'Tambahkan es batu jika diinginkan.',
    ],
  },
  'Resep Nasi Goreng': {
    'imagePath': 'assets/nasi_goreng.jpg',
    'ingredients': [
      '2 piring nasi putih (sebaiknya nasi yang sudah dingin)',
      '2 butir telur',
      '2 siung bawang putih, cincang halus',
      '1/2 bawang bombay kecil, cincang halus',
      '2 sendok makan kecap manis',
      '1 sendok makan saus tiram (opsional)',
      '1 sendok teh kecap asin',
      '1 sendok teh garam',
      '1/2 sendok teh merica bubuk',
      '2 sendok makan minyak goreng',
      '100 gram ayam, udang, atau bakso, potong kecil-kecil (opsional)',
      '1 batang daun bawang, iris tipis',
      'Acar, kerupuk, dan irisan mentimun untuk penyajian (opsional)',
    ],
    'instructions': [
      'Siapkan Bahan:',
      'Pastikan semua bahan sudah siap dan dalam jangkauan. Potong dan cincang semua bahan sesuai kebutuhan.',
      'Panaskan Minyak:',
      'Panaskan minyak goreng dalam wajan besar atau penggorengan di atas api sedang-tinggi.',
      'Tumis Bumbu:',
      'Tumis bawang putih dan bawang bombay hingga harum dan berwarna keemasan.',
      'Masak Telur:',
      'Pecahkan telur ke dalam wajan dan aduk-aduk hingga hancur dan matang.',
      'Tambahkan Protein (Opsional):',
      'Jika menggunakan ayam, udang, atau bakso, tambahkan sekarang. Masak hingga matang.',
      'Masukkan Nasi:',
      'Masukkan nasi putih ke dalam wajan dan aduk rata dengan telur dan bumbu. Pastikan nasi terpisah dan tidak menggumpal.',
      'Tambahkan Bumbu:',
      'Tambahkan kecap manis, saus tiram, kecap asin, garam, dan merica bubuk. Aduk rata hingga semua bahan tercampur sempurna dan nasi berwarna merata.',
      'Tambahkan Daun Bawang:',
      'Masukkan irisan daun bawang dan aduk sebentar hingga layu.',
      'Cicipi dan Sesuaikan:',
      'Cicipi nasi goreng dan sesuaikan rasa jika diperlukan dengan menambah garam atau kecap manis.',
      'Sajikan:',
      'Angkat nasi goreng dari wajan dan sajikan di atas piring. Tambahkan acar, kerupuk, dan irisan mentimun sebagai pelengkap.',
    ],
  },
  'Resep Apple Pie': {
    'imagePath': 'assets/apple_pie.jpg',
    'ingredients': [
      'Kulit Pie',
      '2 1/2 cangkir tepung serbaguna',
      '1 sendok teh garam',
      '1 sendok teh gula',
      '1 cangkir mentega dingin, dipotong dadu',
      '1/4 hingga 1/2 cangkir air es',
      'Isian',
      '6 buah apel besar (misalnya Granny Smith atau Fuji), kupas, buang inti, dan iris tipis',
      '3/4 cangkir gula pasir',
      '1/4 cangkir gula merah',
      '1 sendok makan jus lemon',
      '1 1/2 sendok teh kayu manis bubuk',
      '1/4 sendok teh pala bubuk',
      '1/4 sendok teh garam',
      '2 sendok makan tepung maizena (opsional, untuk mengentalkan)',
      '2 sendok makan mentega, dipotong kecil-kecil',
      '1 telur, dikocok (untuk olesan)',
    ],
    'instructions': [
      'Membuat Kulit Pie',
      'Campurkan tepung, garam, dan gula dalam mangkuk besar.',
      'Tambahkan mentega dingin dan gunakan pisau pastry atau garpu untuk memotong mentega hingga campuran menyerupai remah kasar.',
      'Tambahkan air es sedikit demi sedikit sambil diaduk hingga adonan bisa dibentuk menjadi bola.',
      'Bagi adonan menjadi dua bagian, bungkus dengan plastik wrap, dan dinginkan di kulkas selama minimal 1 jam.',
      'Membuat Isian',
      'Campurkan irisan apel, gula pasir, gula merah, jus lemon, kayu manis, pala, dan garam dalam mangkuk besar. Aduk hingga rata. Jika ingin isian lebih kental, tambahkan tepung maizena.',
      'Biarkan campuran apel tersebut selama sekitar 30 menit agar rasa meresap.',
      'Membuat Apple Pie',
      'Panaskan oven hingga 220°C (425°F).',
      'Giling satu bagian adonan kulit pie hingga mencapai ketebalan sekitar 1/8 inci. Tempatkan dalam loyang pie berdiameter 9 inci, sisihkan.',
      'Isi loyang dengan campuran apel, ratakan.',
      'Giling sisa adonan kulit pie dan letakkan di atas isian apel. Rapikan tepi dan tekan untuk menutup.',
      'Potong beberapa celah di bagian atas kulit pie untuk ventilasi, dan olesi dengan telur kocok.',
      'Panggang dalam oven yang telah dipanaskan selama 45-50 menit atau hingga kulit pie berwarna keemasan dan isian mulai menggelegak.',
      'Biarkan dingin sebelum disajikan.',
    ],
  },
  'Resep Burger': {
    'imagePath': 'assets/burger.jpg',
    'ingredients': [
      'Untuk Patty Burger',
      '500 gram daging sapi giling',
      '1 sendok makan bawang putih bubuk',
      '1 sendok makan bawang bombay bubuk',
      '1 sendok teh garam',
      '1/2 sendok teh merica bubuk',
      '1 sendok makan saus Worcestershire (opsional)',
      'Untuk Penyajian',
      '4 roti burger, dipanggang',
      'Lettuce',
      'Tomat, iris',
      'Keju cheddar, iris',
      'Mayones',
      'Ketchup',
      'Mustard',
      'Acar',
    ],
    'instructions': [
      'Membuat Patty Burger',
      'Campurkan daging sapi giling dengan bawang putih bubuk, bawang bombay bubuk, garam, merica, dan saus Worcestershire jika menggunakan.',
      'Bentuk adonan daging menjadi 4 patty burger dengan ketebalan sekitar 1 cm.',
      'Panaskan panggangan atau wajan di atas api sedang-tinggi. Masak patty selama sekitar 4-5 menit per sisi, atau hingga mencapai tingkat kematangan yang diinginkan.',
      'Jika menggunakan keju, letakkan selembar keju di atas patty pada 1 menit terakhir memasak dan tutup panggangan atau wajan untuk melelehkan keju.',
      'Penyajian Burger',
      'Olesi roti burger dengan mayones, ketchup, dan mustard sesuai selera.',
      'Letakkan patty yang sudah dimasak di atas roti burger.',
      'Tambahkan lettuce, irisan tomat, acar, dan bahan tambahan lainnya.',
      'Tutup dengan roti burger yang lain dan sajikan.',
    ],
  },
  'Resep Clam Chowder': {
    'imagePath': 'assets/Clam_Chowder.jpg',
    'ingredients': [
      '1 sendok makan minyak zaitun',
      '1 bawang bombay, cincang halus',
      '2 batang seledri, cincang halus',
      '2 siung bawang putih, cincang halus',
      '1/4 cangkir tepung terigu',
      '2 cangkir kaldu ayam atau kaldu seafood',
      '1 cangkir krim kental',
      '1 cangkir susu',
      '2 kentang besar, kupas dan potong dadu',
      '1 kaleng kerang (sekitar 400 gram), tiriskan dan cincang kasar',
      '2 daun salam',
      '1 sendok teh thyme kering',
      '1/2 sendok teh garam',
      '1/4 sendok teh merica',
      '2 sendok makan peterseli segar, cincang (opsional)',
      'Roti baguette untuk sajian',
    ],
    'instructions': [
      'Membuat Clam Chowder',
      'Panaskan minyak zaitun dalam panci besar di atas api sedang.',
      'Tumis bawang bombay, seledri, dan bawang putih hingga bawang bombay menjadi transparan.',
      'Tambahkan tepung terigu dan aduk hingga tercampur rata dan sedikit berwarna keemasan.',
      'Secara bertahap tambahkan kaldu sambil terus diaduk untuk menghindari gumpalan.',
      'Tambahkan krim kental dan susu. Aduk hingga rata.',
      'Masukkan kentang, kerang, daun salam, thyme, garam, dan merica. Biarkan mendidih, lalu kurangi api dan masak selama 15-20 menit hingga kentang empuk.',
      'Aduk sesekali dan periksa rasa. Tambahkan peterseli jika diinginkan.',
      'Sajikan panas dengan potongan roti baguette.',
    ],
  },
  'Resep Lumpia': {
    'imagePath': 'assets/lumpia.jpg',
    'ingredients': [
      'Untuk Isian',
      '200 gram daging ayam cincang',
      '100 gram wortel, serut halus',
      '100 gram kol, serut halus',
      '2 siung bawang putih, cincang halus',
      '1 bawang bombay, cincang halus',
      '2 sendok makan kecap asin',
      '1 sendok teh gula',
      '1 sendok teh garam',
      '1/2 sendok teh merica',
      '2 sendok makan minyak goreng',
      'Kulit Lumpia',
      '10 lembar kulit lumpia (bisa dibeli di toko bahan makanan Asia)',
      'Minyak goreng, untuk menggoreng',
    ],
    'instructions': [
      'Membuat Isian',
      'Panaskan minyak goreng dalam wajan di atas api sedang.',
      'Tumis bawang putih dan bawang bombay hingga harum.',
      'Tambahkan daging ayam cincang dan masak hingga matang.',
      'Masukkan wortel dan kol, aduk rata. Tambahkan kecap asin, gula, garam, dan merica. Masak hingga sayuran layu. Angkat dan dinginkan.',
      'Membungkus Lumpia',
      'Ambil selembar kulit lumpia dan letakkan di atas permukaan datar.',
      'Letakkan 1-2 sendok makan isian di tengah kulit lumpia.',
      'Lipatan sisi kulit lumpia ke arah tengah, kemudian gulung rapat. Seal bagian tepi dengan campuran air dan tepung jika perlu.',
      'Panaskan minyak goreng dalam wajan di atas api sedang-tinggi.',
      'Goreng lumpia hingga berwarna keemasan dan krispi, sekitar 3-4 menit per sisi.',
      'Angkat dan tiriskan. Sajikan panas dengan saus sambal atau saus manis.',
    ],
  },
};

void showRecipeDetail(BuildContext context, String title) {
  final recipe = recipes[title];
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(recipe!['imagePath']),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 19, 8, 38),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Warna abu-abu muda
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Deskripsi untuk $title',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 19, 8, 38),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Warna abu-abu muda
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bahan:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 19, 8, 38),
                        ),
                      ),
                      SizedBox(height: 8),
                      ...recipe['ingredients'].map<Widget>(
                        (ingredient) => Text(
                          ingredient,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 19, 8, 38),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Warna abu-abu muda
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Langkah:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 19, 8, 38),
                        ),
                      ),
                      SizedBox(height: 8),
                      ...recipe['instructions'].map<Widget>(
                        (step) => Text(
                          step,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 19, 8, 38),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            child: Text('Tutup'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
