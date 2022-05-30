import 'package:spring/services/PostResponse.dart';
import 'package:flutter/material.dart';
import 'package:spring/services/serveice.dart';

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  List<Post>? postsresponse;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data form API
    getData();
  }

  getData() async {
    postsresponse = await RemoteService().getPosts();
    if (postsresponse != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Visibility(
          visible: isLoaded,
          child: ListView.builder(
            itemCount: postsresponse?.length,
            itemBuilder: (context, index) {
              return Text(
                postsresponse![index].title ?? "no data found",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.green,
                ),
              );
            },
          ),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
