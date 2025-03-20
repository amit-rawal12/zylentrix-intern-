import 'package:flutter/material.dart';
import 'package:zylentrix/post_model.dart';
import 'package:zylentrix/services/api_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ApiServcie _apiServcie = ApiServcie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Posts", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w600)),
      ),
      body: FutureBuilder<List<PostModel>>(
        future: _apiServcie.fetchPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.blue));
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            final posts = snapshot.data!; // List<PostModel>

            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index]; // Individual PostModel object

                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    title: Text(post.title, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(post.body, maxLines: 2, overflow: TextOverflow.ellipsis),
                    leading: CircleAvatar(
                      child: Text(post.id.toString()), // Displaying post ID
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text("No Posts Found"));
          }
        },
      ),
    );
  }
}
