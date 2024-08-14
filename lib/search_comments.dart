import 'package:flutter/material.dart';

class SearchCommentsPage extends StatefulWidget {
  @override
  _SearchCommentsPageState createState() => _SearchCommentsPageState();
}

class _SearchCommentsPageState extends State<SearchCommentsPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> allComments = [
    {'user': 'User 1', 'comment': 'Nasi Goreng adalah favorit saya!'},
    {'user': 'User 2', 'comment': 'Mie Ayam ini sangat lezat!'},
    {'user': 'User 3', 'comment': 'Cendolnya segar sekali!'},
    // Add more comments as needed
  ];
  List<Map<String, String>> filteredComments = [];

  @override
  void initState() {
    super.initState();
    filteredComments = allComments;
  }

  void _filterComments(String query) {
    setState(() {
      filteredComments = allComments
          .where((comment) =>
              comment['comment']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cari Komentar'),
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
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Cari Komentar',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _filterComments(_searchController.text);
                  },
                ),
              ),
              onChanged: _filterComments,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredComments.length,
                itemBuilder: (context, index) {
                  final comment = filteredComments[index];
                  return _buildComment(comment['user']!, comment['comment']!);
                },
              ),
            ),
          ],
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
