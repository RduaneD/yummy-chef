import 'package:flutter/material.dart';
import 'comments.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Komunitas YummyChef'),
        backgroundColor: Color(0xFF49A3FC),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF49A3FC), Color(0xFFB0E0E6)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            CommunityPost(
              imagePath: 'assets/nasi_goreng.jpg',
              title: 'Resep Nasi Goreng Spesial',
              author: 'User1',
              commentCount: 5,
            ),
            CommunityPost(
              imagePath: 'assets/cendol.jpg',
              title: 'Resep Cendol Segar',
              author: 'User2',
              commentCount: 3,
            ),
            CommunityPost(
              imagePath: 'assets/pad_thai.jpg',
              title: 'Resep Pad Thai Lezat',
              author: 'User3',
              commentCount: 7,
            ),
            // Tambahkan postingan komunitas lainnya
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
              context, '/add_post'); // Navigasi ke halaman tambah postingan
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF49A3FC),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey),
            label: 'Pencarian',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Color(0xFF49A3FC)),
            label: 'Komunitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Color(0xFF49A3FC),
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(
                context, '/search_comments'); // Pencarian komentar
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/community');
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/profile');
          }
        },
      ),
    );
  }
}

class CommunityPost extends StatefulWidget {
  final String imagePath;
  final String title;
  final String author;
  final int commentCount;

  CommunityPost({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.commentCount,
  });

  @override
  _CommunityPostState createState() => _CommunityPostState();
}

class _CommunityPostState extends State<CommunityPost> {
  int likeCount = 0;
  bool isLiked = false;

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
      likeCount += isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CommentsPage(
                    imagePath: widget.imagePath,
                    title: widget.title,
                    author: widget.author,
                  ),
                ),
              );
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'by ${widget.author}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.grey,
                      ),
                      onPressed: _toggleLike,
                    ),
                    Text('$likeCount Likes'),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.comment),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CommentsPage(
                              imagePath: widget.imagePath,
                              title: widget.title,
                              author: widget.author,
                            ),
                          ),
                        );
                      },
                    ),
                    Text('${widget.commentCount} Komentar'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
