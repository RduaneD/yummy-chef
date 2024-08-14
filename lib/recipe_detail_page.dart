import 'package:flutter/material.dart';

class RecipeDetailPage extends StatelessWidget {
  final String recipeName;
  final String recipeImage;
  final String recipeDescription;
  final List<String> ingredients;
  final List<String> instructions;

  RecipeDetailPage({
    required this.recipeName,
    required this.recipeImage,
    required this.recipeDescription,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  recipeImage,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                recipeName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                recipeDescription,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[700],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Bahan-Bahan:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: 8.0),
              ...ingredients.map((ingredient) => Text(
                    '• $ingredient',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[600],
                    ),
                  )),
              SizedBox(height: 16.0),
              Text(
                'Langkah-Langkah:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: 8.0),
              ...instructions.map((instruction) => Text(
                    '• $instruction',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[600],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
