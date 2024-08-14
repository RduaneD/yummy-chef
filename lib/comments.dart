import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  final String imagePath;
  final String title;
  final String author;

  CommentsPage({
    required this.imagePath,
    required this.title,
    required this.author,
  });

  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final TextEditingController _commentController = TextEditingController();
  final List<Map<String, String>> comments = [
    {'user': 'User 1', 'comment': 'Komentar pertama'},
    {'user': 'User 2', 'comment': 'Komentar kedua'},
    // Tambahkan komentar lainnya jika diperlukan
  ];

  void _addComment() {
    final comment = _commentController.text;
    if (comment.isNotEmpty) {
      setState(() {
        comments.add({
          'user': 'UserX',
          'comment': comment,
        }); // Ganti 'UserX' dengan data pengguna sebenarnya
        _commentController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Komentar'),
        backgroundColor: Color(0xFF49A3FC),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF49A3FC), Color(0xFFB0E0E6)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Tambahkan SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.imagePath), // Gambar dari postingan
              SizedBox(height: 16),
              Text(
                widget.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Dipos oleh ${widget.author}',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              ListView.builder(
                shrinkWrap:
                    true, // Menambahkan shrinkWrap untuk menyesuaikan tinggi list dengan konten
                physics:
                    NeverScrollableScrollPhysics(), // Menonaktifkan scroll pada ListView
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  final comment = comments[index];
                  return _buildComment(comment['user']!, comment['comment']!);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    labelText: 'Tambah Komentar',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: _addComment,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComment(String user, String comment) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Text(user[0]),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(comment),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
