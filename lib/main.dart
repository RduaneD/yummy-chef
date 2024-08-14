import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'recipe_list_page.dart';
import 'recipe_search_page.dart';
import 'edit_profile_page.dart'; // Import halaman edit profil
import 'profile_page.dart';
import 'registration_page.dart';
import 'communitypage.dart'; // Import halaman komunitas
import 'add_post.dart';
import 'comments.dart';
import 'search_comments.dart'; // Import halaman pencarian komentar

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(YummyChefApp());
}

class YummyChefApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YummyChef',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(), // Halaman awal aplikasi
      routes: {
        '/login': (context) => LoginPage(), // Rute untuk halaman Login
        '/home': (context) => HomePage(), // Rute untuk halaman Home
        '/recipes': (context) => RecipeListPage(), // Rute untuk halaman resep
        '/registration': (context) =>
            RegistrationPage(), // Rute untuk halaman pendaftaran
        '/profile': (context) => ProfilePage(), // Rute untuk halaman profil
        '/edit-profile': (context) =>
            EditProfilePage(), // Rute untuk halaman edit profil
        '/search': (context) =>
            RecipeSearchPage(), // Rute untuk halaman pencarian resep
        '/community': (context) =>
            CommunityPage(), // Rute untuk halaman komunitas
        '/add_post': (context) =>
            AddPostPage(), // Rute untuk halaman tambah postingan
        '/comments': (context) => CommentsPage(
              imagePath:
                  ModalRoute.of(context)?.settings.arguments as String? ?? '',
              title:
                  ModalRoute.of(context)?.settings.arguments as String? ?? '',
              author:
                  ModalRoute.of(context)?.settings.arguments as String? ?? '',
            ), // Rute untuk halaman komentar
        '/search_comments': (context) =>
            SearchCommentsPage(), // Rute untuk halaman pencarian komentar
      },
    );
  }
}
